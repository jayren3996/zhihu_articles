(* ::Package:: *)

BeginPackage["ClassicalLieAlgebra`"];

SU
SO
Sp

Generators
CartanWeyl
CartanWeylH
CartanWeylE
CartanWeylF
StandardBasis
StandardChevalley
StandardChevalleyH
StandardChevalleyE
StandardChevalleyF
Chevalley
ChevalleyH
ChevalleyE
ChevalleyF

Tableau
Psi
TensorTableau

TableauForm
ToTensor
TableauPermute
TableauDot
TensorDot
TensorNorm
TableauNormalization
TableauOrthogonalization

Begin["Private`"];

protectlist={
    "SU",
    "SO",
    "Sp",

    "Generators",
    "CartanWeyl",
    "CartanWeylH",
    "CartanWeylE",
    "CartanWeylF",
    "Chevalley",
    "ChevalleyH",
    "ChevalleyE",
    "ChevalleyF",
    "StandardBasis",
    "StandardChevalley",
    "StandardChevalleyH",
    "StandardChevalleyE",
    "StandardChevalleyF",

    "Tableau",
    "Psi",
    "TensorTableau",
    "TableauForm",
    "ToTensor",
    "TableauPermute",
    "TableauDot",
    "TensorDot",
    "TensorNorm",
    "TableauNormalization",
    "TableauOrthogonalization"
};

(*----------BEGIN SPECIAL-UNITARY-ALGEBRA----------*)



(* Standard Basis *)
SUT[{n_,1},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[a,b]] += 1/2; 
    m[[b,a]] += 1/2;
    m
];
SUT[{n_,2},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[a,b]] -= I/2; 
    m[[b,a]] += I/2;
    m
];
SUT[{n_,3},{i_}]:=Block[{d=ConstantArray[0,n]}, 
    d[[1;;i-1]] = 1/Sqrt[2i*(i-1)];
    d[[i]] = -Sqrt[(i-1)/(2i)];
    DiagonalMatrix[d]
];
SUT[n_]:=Block[{list={}, i, j},
    For[j=2, j<=n, j++,
        For[i=1, i<j, i++,
            AppendTo[list, SUT[{n,1},{i,j}]];
            AppendTo[list, SUT[{n,2},{i,j}]];
        ];
        AppendTo[list, SUT[{n,3},{j}]];
    ];
    list
];

(* Cartan-Weyl Basis *)
SUCWH[n_, i_]:=Block[{d=ConstantArray[0,n]}, 
    j = n+1-i;
    d[[1;;j-1]] = 1 / Sqrt[j*(j-1)];
    d[[j]]  = -Sqrt[(j-1)/j];
    DiagonalMatrix[d]
];
SUCWE[n_, {i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[a,b]] = 1;
    m
];
SUCWF[n_, {i_, j_}]:= Transpose @ SUCWE[n, {i,j}];
SUCW[n_]:=Block[{Hl, El={}, Fl, i, j},
    Hl = Table[SUCWH[n, i], {i,n-1}];
    For[j=2, j<=n, j++,
        For[i=1, i<j, i++,
            AppendTo[El, SUCWE[n, {i,j}]];
        ];
    ];
    Fl = Transpose /@ El;
    {Hl,El,Fl}
];

(* Chevalley Basis *)
SUH[n_, i_]:= Block[{d=ConstantArray[0,n]}, 
    d[[i]] = 1;
    d[[i+1]] = -1;
    DiagonalMatrix[d]
];
SUE[n_, i_]:= SUCWE[n, {i, i+1}];
SUF[n_, i_]:= SUCWF[n, {i, i+1}];

SUn[n_]:=Block[{Hl,El,Fl},
    Hl = Table[SUH[n, i], {i,n-1}];
    El = Table[SUE[n, i], {i,n-1}];
    Fl = Transpose /@ El;
    {Hl, El, Fl}
];
(*-----------END SPECIAL-UNITARY-ALGEBRA-----------*)



(*---------BEGIN SPECIAL-Orthogonal-ALGEBRA---------*)



(* Standard Basis *)
SOT[n_, {i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[a,b]] -= I; 
    m[[b,a]] += I;
    m
];
SOT[n_]:=Block[{list={}, i, j},
    For[j=2, j<=n, j++,
        For[i=1, i<j, i++,
            AppendTo[list, SOT[n,{i,j}]];
        ];
    ];
    list
];

(* Cartan-Weyl Basis *)
SOCWH[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]},
    m[[2i-1,2i  ]] = -I;
    m[[2i  ,2i-1]] = +I;
    m
];
SOCWE[{n_,1},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a  ,2b-1]] = +1/2;
    m[[2a-1,2b-1]] = -I/2;
    m[[2a  ,2b  ]] = -I/2;
    m[[2a-1,2b  ]] = -1/2;
    -I*m + I*Transpose[m]
];
SOCWE[{n_,2},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a  ,2b-1]] = +1/2;
    m[[2a-1,2b-1]] = -I/2;
    m[[2a  ,2b  ]] = +I/2;
    m[[2a-1,2b  ]] = +1/2;
    -I*m + I*Transpose[m]
];
SOCWE[{n_,3},{i_}]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i  ,n]] = +1/Sqrt[2];
    m[[2i-1,n]] = -I/Sqrt[2];
    -I*m + I*Transpose[m]
];
SOCWF[{n_,1},{i_, j_}]:= Conjugate @ Transpose @ SOCWE[{n,1},{i,j}];
SOCWF[{n_,2},{i_, j_}]:= Conjugate @ Transpose @ SOCWE[{n,2},{i,j}];
SOCWF[{n_,3},{i_}    ]:= Conjugate @ Transpose @ SOCWE[{n,3},{i}  ];
SOCW[n_]:=Block[{l,p,i,j,h,e={},f},
    {l,p} = QuotientRemainder[n,2];
    h = Table[SOCWH[n,i], {i,l}];
    For[j=2, j<=l, j++,
        For[i=1, i<j, i++,
            AppendTo[e, SOCWE[{n,1},{i,j}]];
            AppendTo[e, SOCWE[{n,2},{i,j}]];
        ];
    ];
    If[p==1, 
        For[i=1,i<=l,i++,
            AppendTo[e, SOCWE[{n,3}, {i}]];
        ];
    ];
    f = Conjugate @* Transpose /@ e;
    {h,e,f}
];

(* Chevalley Basis *)
SOChH[2,1]:={{0,-I},{I,0}};
SOChH[n_?OddQ,i_]:=Block[{m=ConstantArray[0,{n,n}], l=(n-1)/2},
    If[i==l,
        m[[2l-1, 2l]] = -2I; 
        m[[2l, 2l-1]] = +2I;
        ,
        m[[2i-1, 2i  ]] = -I; 
        m[[2i  , 2i-1]] = +I;
        m[[2i+1, 2i+2]] = +I; 
        m[[2i+2, 2i+1]] = -I;
    ];
    m
];
SOChH[n_?EvenQ,i_]:=Block[{m=ConstantArray[0,{n,n}], l=n/2},
    If[i==l,
        m[[2l-1, 2l  ]] = -I; 
        m[[2l  , 2l-1]] = +I;
        m[[2l-3, 2l-2]] = -I; 
        m[[2l-2, 2l-3]] = +I;
        ,
        m[[2i-1, 2i  ]] = -I; 
        m[[2i  , 2i-1]] = +I;
        m[[2i+1, 2i+2]] = +I; 
        m[[2i+2, 2i+1]] = -I;
    ];
    m
];
SOChE[2,1]:= Nothing;
SOChE[n_?OddQ,i_]:=Block[{m=ConstantArray[0,{n,n}], l=(n-1)/2},
    If[i==l,
        m[[2i  ,n]] = +1;
        m[[2i-1,n]] = -I;
        ,
        m[[2i  ,2i+1]] = +1/2;
        m[[2i-1,2i+1]] = -I/2;
        m[[2i  ,2i+2]] = -I/2;
        m[[2i-1,2i+2]] = -1/2;
    ];
    -I*m + I*Transpose[m]
];
SOChE[n_?EvenQ,i_]:=Block[{m=ConstantArray[0,{n,n}], l=n/2},
    If[i==l,
        m[[2i-2,2i-1]] = +1/2;
        m[[2i-3,2i-1]] = -I/2;
        m[[2i-2,2i  ]] = +I/2;
        m[[2i-3,2i  ]] = +1/2;
        ,
        m[[2i  ,2i+1]] =  1/2;
        m[[2i-1,2i+1]] = -I/2;
        m[[2i  ,2i+2]] = -I/2;
        m[[2i-1,2i+2]] = -1/2;
    ];
    -I*m + I*Transpose[m]
];
SOChF[n_,i_]:= Conjugate @ Transpose @ SOChE[n,i];
SOCh[n_]:=Block[{l,h,e,f},
    l = Quotient[n,2];
    h = Table[SOChH[n,i], {i,l}];
    e = Table[SOChE[n,i], {i,l}];
    f = Conjugate @* Transpose /@ e;
    {h,e,f}
];

(* Spherical Harmonic Basis *)
SOBasis[n_?OddQ]:=Block[{l=(n-1)/2, b},
    b = ConstantArray[0, {n,n}];
    For[i=1, i<=l, i++,
        b[[i,2i-1]] = (-1)^(l-i+1)/Sqrt[2];
        b[[i,2i  ]] = (-1)^(l-i+1)/Sqrt[2] * I;
    ];
    b[[l+1,n]] = 1;
    For[i=l+2, i<=n, i++,
        b[[i, 4l-2i+3]] = 1/Sqrt[2];
        b[[i, 4l-2i+4]] = -I/Sqrt[2];
    ];
    b
];
SOBasis[n_?EvenQ]:=Block[{l=n/2, b},
    b = ConstantArray[0, {n,n}];
    For[i=1, i<=l, i++,
        b[[i,2i-1]] = (-1)^(l-i)/Sqrt[2];
        b[[i,2i  ]] = (-1)^(l-i)/Sqrt[2] * I;
    ];
    For[i=l+1, i<=n, i++,
        b[[i,4l-2i+1]] = 1/Sqrt[2];
        b[[i,4l-2i+2]] = -I/Sqrt[2];
    ];
    b
];

(* Chevalley in new Basis *)
SOH[n_?OddQ, i_]:=Block[{m=ConstantArray[0,{n,n}], l=(n-1)/2},
    If[i==l,
        m[[i  , i  ]] = +2; 
        m[[i+2, i+2]] = -2;
        ,
        m[[i  , i  ]] = +1; 
        m[[i+1, i+1]] = -1;
        m[[n-i, n-i]] = +1; 
        m[[n-i+1, n-i+1]] = -1;
    ];
    m
];
SOE[n_?OddQ, i_]:=Block[{m=ConstantArray[0,{n,n}], l=(n-1)/2},
    If[i==l,
        m[[i  , i+1]] = +Sqrt[2]; 
        m[[i+1, i+2]] = +Sqrt[2];
        ,
        m[[i  ,   i+1]] = +1; 
        m[[n-i, n-i+1]] = +1;
    ];
    m
];
SOH[2,1]:={{1,0},{0,-1}};
SOH[n_?EvenQ, i_]:=Block[{m=ConstantArray[0,{n,n}], l=n/2},
    If[i==l,
        m[[i-1, i-1]] = +1; 
        m[[i  , i  ]] = +1;
        m[[i+1, i+1]] = -1; 
        m[[i+2, i+2]] = -1;
        ,
        m[[i  , i  ]] = +1; 
        m[[i+1, i+1]] = -1;
        m[[n-i  , n-i  ]] = +1; 
        m[[n-i+1, n-i+1]] = -1;
    ];
    m
];
SOE[2, 1]:= Nothing;
SOE[n_?EvenQ, i_]:=Block[{m=ConstantArray[0,{n,n}], l=n/2},
    If[i==l,
        m[[i-1, i+1]] = +1; 
        m[[i  , i+2]] = +1;
        ,
        m[[i  ,   i+1]] = +1; 
        m[[n-i, n-i+1]] = +1;
    ];
    m
];
SOF[n_, i_]:= Transpose @ SOE[n, i];
SOn[n_]:=Block[{l,h,e,f},
    l = Quotient[n,2];
    h = Table[SOH[n,i], {i,l}];
    e = Table[SOE[n,i], {i,l}];
    f = Transpose /@ e;
    {h,e,f}
];

(*----------END SPECIAL-Orthogonal-ALGEBRA----------*)



(*---------BEGIN Symplectic-UNITARY-ALGEBRA---------*)



(* Standard Generators *)
SpT[{n_,1},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b-1]] = -I/2;
    m[[2b-1,2a-1]] = +I/2;
    m[[2a  ,2b  ]] = -I/2;
    m[[2b  ,2a  ]] = -I/2;
    m
];
SpT[{n_,2},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b  ]] = 1/2;
    m[[2b-1,2a  ]] = 1/2;
    m[[2a  ,2b-1]] = 1/2;
    m[[2b  ,2a-1]] = 1/2;
    m
];
SpT[{n_,3},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b  ]] = -I/2;
    m[[2b-1,2a  ]] = -I/2;
    m[[2a  ,2b-1]] = +I/2;
    m[[2b  ,2a-1]] = +I/2;
    m
];
SpT[{n_,4},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b-1]] = +1/2;
    m[[2b-1,2a-1]] = +1/2;
    m[[2a  ,2b  ]] = -1/2;
    m[[2b  ,2a  ]] = -1/2;
    m
];
SpT[{n_,5},{i_}]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i-1,2i  ]] = +1/Sqrt[2];
    m[[2i  ,2i-1]] = +1/Sqrt[2];
    m
];
SpT[{n_,6},{i_}]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i-1,2i  ]] = -I/Sqrt[2];
    m[[2i  ,2i-1]] = +I/Sqrt[2];
    m
];
SpT[{n_,7},{i_}]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i-1,2i-1]] = +1/Sqrt[2];
    m[[2i  ,2i  ]] = -1/Sqrt[2];
    m
];
SpT[n_]:=Block[{l=n/2, Tl={}, i, j},
    For[j=2, j<=l, j++,
        For[i=1, i<j, i++,
            AppendTo[Tl, SpT[{n,1},{i,j}]];
            AppendTo[Tl, SpT[{n,2},{i,j}]];
            AppendTo[Tl, SpT[{n,3},{i,j}]];
            AppendTo[Tl, SpT[{n,4},{i,j}]];
        ];
    ];
    For[i=1,i<=l,i++,
        AppendTo[Tl, SpT[{n,5},{i}]];
        AppendTo[Tl, SpT[{n,6},{i}]];
        AppendTo[Tl, SpT[{n,7},{i}]];
    ];
    Tl
];

(* Cartan-Weyl Basis *)
SpCWH[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i-1,2i-1]] = 1/Sqrt[2];
    m[[2i  ,2i  ]] = -1/Sqrt[2];
    m
];
SpCWE[{n_,1},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b-1]] = +1/Sqrt[2];
    m[[2b  ,2a  ]] = -1/Sqrt[2];
    m
];
SpCWE[{n_,2},{i_, j_}]:=Block[{m=ConstantArray[0,{n,n}], a, b}, 
    {a, b} = If[i<j, {i,j}, {j,i}];
    m[[2a-1,2b]] = 1/Sqrt[2];
    m[[2b-1,2a]] = 1/Sqrt[2];
    m
];
SpCWE[{n_,3},{i_}]:=Block[{m=ConstantArray[0,{n,n}]}, 
    m[[2i-1,2i]] = 1;
    m
];
SpCWF[{n_,i_}, index]:= Conjugate @ Transpose @ SpCWE[{n,i}, index];
SpCW[n_]:=Block[{l=n/2, Hl, El={}, Fl, i, j},
    Hl = Table[SpCWH[n, i], {i,l}];
    For[j=2, j<=l, j++,
        For[i=1, i<j, i++,
            AppendTo[El, SpCWE[{n,1},{i,j}]];
            AppendTo[El, SpCWE[{n,2},{i,j}]];
        ];
    ];
    For[i=1,i<=l,i++,
        AppendTo[El, SpCWE[{n,3},{i}]];
    ];
    Fl = Conjugate @* Transpose /@ El;
    {Hl, El, Fl}
];

(* Chevalley Basis *)
SpChH[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]}, 
    If[i==n/2,
        m[[2i-1,2i-1]] = +1;
        m[[2i  ,2i  ]] = -1;
        ,
        m[[2i-1,2i-1]] = +1;
        m[[2i  ,2i  ]] = -1;
        m[[2i+1,2i+1]] = -1;
        m[[2i+2,2i+2]] = +1;
    ];
    m
];
SpChE[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]}, 
    If[i==n/2,
        m[[2i-1,2i]] = 1;
        ,
        m[[2i-1,2i+1]] = +1;
        m[[2i+2,2i  ]] = -1;
    ];
    m
];
SpChF[n_,i_]:= Conjugate @ Transpose @ SpChE[n, i];
SpCh[n_]:=Block[{l=n/2, Hl, El={}, Fl, i},
    Hl = Table[SpChH[n,i], {i,l}];
    El = Table[SpChE[n,i], {i,l}];
    Fl = Conjugate @* Transpose /@ El;
    {Hl, El, Fl}
];

(* Permuted Basis *)
SpBasis[n_]:= Block[{m=ConstantArray[0, {n,n}], l=n/2, i},
    For[i=1,i<=l,i++,
        m[[i, 2i-1]] = 1;
        m[[l+i, n+2-2i]] = 1;
    ];
    m
];

(* Chevalley in new Basis *)
SpH[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]}, 
    If[i==n/2,
        m[[i,i]] = 1;
        m[[i+1,i+1]] = -1;
        ,
        m[[i,i]] = 1;
        m[[i+1,i+1]] = -1;
        m[[n-i,n-i]] = 1;
        m[[n-i+1,n-i+1]] = -1;
    ];
    m
];
SpE[n_,i_]:=Block[{m=ConstantArray[0,{n,n}]}, 
    If[i==n/2,
        m[[i,i+1]] = 1;
        ,
        m[[i,i+1]] = 1;
        m[[n-i,n-i+1]] = -1;
    ];
    m
];
SpF[n_,i_]:= Conjugate @ Transpose @ SpE[n, i];
Spn[n_]:=Block[{l=n/2, Hl, El={}, Fl},
    Hl = Table[SpH[n,i], {i,l}];
    El = Table[SpE[n,i], {i,l}];
    Fl = Conjugate @* Transpose /@ El;
    {Hl, El, Fl}
];

(*----------END Symplectic-UNITARY-ALGEBRA----------*)



(*----------------BEGIN YOUNG-TABLEAU----------------*)



(*Permutation*)
CycleDotAtom[c1_Cycles, c2_Cycles]:= PermutationProduct[c2, c1];
CycleDotAtom[a_*c1_Cycles, c2_Cycles]:= a * PermutationProduct[c2, c1];
CycleDotAtom[c1_Cycles, b_*c2_Cycles]:= b * PermutationProduct[c2, c1];
CycleDotAtom[a_*c1_Cycles, b_*c2_Cycles]:= a*b * PermutationProduct[c2, c1];

CycleDot[a_, b_]:= Distribute[CycleDotAtom[a,b]];
CycleProduct[a__]:= Fold[CycleDot, {a}];

(*Young tableax*)
TableauTranspose[t_List]:=Block[{l=Length[t], li=Length/@t, p=1, out={}, i, j},
    For[i=1, i<=l, i++,
        j = l-i+1;
        out = Join[out, Transpose@t[[1;;j, p;;li[[j]]]]];
        p = li[[j]]+1;
    ];
    out
];
ShowTableau[t_List]:= Grid[Map[Item[#,Frame->True]&,#]&/@t];
TableauTranspose[t_Tableau]:= Tableau @ TableauTranspose @ t[[1]];
TableauForm[t_Tableau]:= ShowTableau @ t[[1]];

(* Young symmetrizer *)
Parity[p_]:= (-1)^(Total[Length/@p[[1]]]+Length[p[[1]]]);
PermutationGroupElements[l_]:= GroupElements @ PermutationGroup[Cycles[{#}]&/@{l[[1;;2]],l}];
PermuteElements[l_,1]:= Total @ PermutationGroupElements[l];
PermuteElements[l_,2]:= (Dot[Parity/@#,#]&) @ PermutationGroupElements[l];
YoungSymmetrizer[t_List]:=Block[{p, q, tt=TableauTranspose[t], l, i},
    p = Cycles[{{}}];
    q = Cycles[{{}}];
    For[i=1, i<=Length[t], i++,
        If[Length[t[[i]]]<2, Break[]];
        p = CycleDot[PermuteElements[t[[i]],1], p];
    ];
    For[i=1, i<=Length[tt], i++,
        If[Length[tt[[i]]]<2, Break[]];
        q = CycleDot[PermuteElements[tt[[i]],2], q];
    ];
    CycleDot[p , q]
];
Symmetrizer[t_Tableau]:= YoungSymmetrizer @ t[[1]];

(* Tensor Permutation *)
TensorPermuteAtom[c_Cycles, v_Psi]:=Permute[v, c];
TensorPermuteAtom[a_*c_Cycles, v_Psi]:= a * Permute[v, c];
TensorPermuteAtom[c_Cycles, b_*v_Psi]:= b * Permute[v, c];
TensorPermuteAtom[a_*c_Cycles, b_*v_Psi]:= a*b * Permute[v, c];
TensorPermute[a_, b_Psi]:= Distribute @ TensorPermuteAtom[a, b];
TableauPermute[t_Tableau, v_Psi]:= TensorPermute[Symmetrizer[t], v];

(* Tensor Normalization *)
SquarePsi[p_Psi]:= 1;
SquarePsi[a_*p_Psi]:= Abs[a]^2;
TensorNorm[p_Psi]:= 1;
TensorNorm[a_*p_Psi]:= Abs[a];
TensorNorm[p_]:= Sqrt @ (SquarePsi /@ p)

DotPsi[p1_Psi, p2_Psi]:= If[SameQ[p1,p2], 1, 0];
DotPsi[a_*p1_Psi, p2_Psi]:= If[SameQ[p1,p2], Conjugate[a], 0];
DotPsi[p1_Psi, b_*p2_Psi]:= If[SameQ[p1,p2], b, 0];
DotPsi[a_*p1_Psi, b_*p2_Psi]:= If[SameQ[p1,p2], Conjugate[a]*b, 0];
TensorDot[p1_, p2_]:= Distribute @ DotPsi[p1, p2];

(* Tensor Tableau *)
TableauForm[t_TensorTableau]:= ShowTableau @ t[[1]];
TableauForm[a_*t_TensorTableau]:= a * ShowTableau @ t[[1]];
TableauForm[t1_+t2_]:= TableauForm[t1] + TableauForm[t2];

ListToTensor[t_List]:=Block[{l=Length[t], li=Length/@t, i, p=1, tab={}},
    For[i=1,i<=l,i++, 
        AppendTo[tab, Range[p,p+li[[i]]-1]];
        p+=li[[i]];
    ];
    TableauPermute[Tableau[tab], Psi @@ Flatten[t]]
];
TableauToTensor[t_TensorTableau]:= ListToTensor @ t[[1]];
TableauToTensor[a_*t_TensorTableau]:= a * ListToTensor @ t[[1]];

ToTensor[t_TensorTableau]:= ListToTensor @ t[[1]];
ToTensor[a_*t_TensorTableau]:= a * ListToTensor @ t[[1]];
ToTensor[t1_+t2_]:= ToTensor[t1] + ToTensor[t2];

(* Normalization & Orthogonalization *)
TableauNormalization[t_]:= Expand[t / TensorNorm @ Expand @ ToTensor @ Expand @ t];
TableauOrthogonalization[t1_, t2_]:= Block[{v1,v2,ov},
    v1 = Expand @ ToTensor @ Expand @ t1;
    v2 = Expand @ ToTensor @ Expand @ t2;
    ov = TensorDot[v1,v2]/TensorNorm[v1]^2;
    {t1, Expand[t2 - ov*t1]}
];
TableauDot[t1_,t2_]:= Block[{v1,v2},
    v1 = Expand @ ToTensor @ Expand @ t1;
    v2 = Expand @ ToTensor @ Expand @ t2;
    TensorDot[v1,v2]
];
(*-----------------END YOUNG-TABLEAU-----------------*)



(*--------------------BEGIN MAIN--------------------*)
Generators[SU[n_]]:= SUT[n];
Generators[SO[n_]]:= SOT[n];
Generators[Sp[n_]]:= SpT[n];
Generators[SO[n_], index_]:= SOT[n, index];
Generators[SU[n_], i_, index_]:= SUT[{n,i}, index];
Generators[Sp[n_], i_, index_]:= SpT[{n,i}, index];

CartanWeyl[SU[n_]]:= SUCW[n];
CartanWeyl[SO[n_]]:= SOCW[n];
CartanWeyl[Sp[n_]]:= SpCW[n];
CartanWeylH[SU[n_], i_]:= SUCWH[n, i];
CartanWeylH[SO[n_], i_]:= SOCWH[n, i];
CartanWeylH[Sp[n_], i_]:= SpCWH[n, i];
CartanWeylE[SU[n_], index_]:= SUCWE[n, index];
CartanWeylE[SO[n_], i_, index_]:= SOCWE[{n, i}, index];
CartanWeylE[Sp[n_], i_, index_]:= SpCWE[{n, i}, index];
CartanWeylF[SU[n_], index_]:= SUCWF[n, index];
CartanWeylF[SO[n_], i_, index_]:= SOCWF[{n, i}, index];
CartanWeylF[Sp[n_], i_, index_]:= SpCWF[{n, i}, index];

StandardChevalley[SO[n_]]:= SOCh[n];
StandardChevalley[Sp[n_]]:= SpCh[n];
StandardChevalleyH[SO[n_], i_]:= SOChH[n, i];
StandardChevalleyH[Sp[n_], i_]:= SpChH[n, i];
StandardChevalleyE[SO[n_], i_]:= SOChE[n, i];
StandardChevalleyE[Sp[n_], i_]:= SpChE[n, i];
StandardChevalleyF[SO[n_], i_]:= SOChF[n, i];
StandardChevalleyF[Sp[n_], i_]:= SpChF[n, i];

StandardBasis[SO[n_]]:= SOBasis[n];
StandardBasis[Sp[n_]]:= SpBasis[n];

Chevalley[SU[n_]]:= SUn[n];
Chevalley[SO[n_]]:= SOn[n];
Chevalley[Sp[n_]]:= Spn[n];
ChevalleyH[SU[n_], i_]:= SUH[n, i];
ChevalleyH[SO[n_], i_]:= SOH[n, i];
ChevalleyH[Sp[n_], i_]:= SpH[n, i];
ChevalleyE[SU[n_], i_]:= SUE[n, i];
ChevalleyE[SO[n_], i_]:= SOE[n, i];
ChevalleyE[Sp[n_], i_]:= SpE[n, i];
ChevalleyF[SU[n_], i_]:= SUF[n, i];
ChevalleyF[SO[n_], i_]:= SOF[n, i];
ChevalleyF[Sp[n_], i_]:= SpF[n, i];


(*---------------------END MAIN---------------------*)

(*Protect @@ protectlist;*)

End[];

EndPackage[];
