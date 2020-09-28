(* ::Package:: *)

<<"MaTeX`"
tex[x_,fontsize_]:=MaTeX[x,FontSize->fontsize];


tf[n1_,n2_,x1_,x2_,k1_,k2_,f_,b_,s_,w_,if_]:=MapThread[Prepend,{Flatten[Riffle[{{#,{-if,-1}1/(5w)}}&/@MaTeX[NumberForm[#,{f,b}]&/@#[1,{x1,x2}],FontSize->s],{Table[{Null,{-if,-1}1/(8w)},k2-1]},2],1],#[k2,{n1,n2}]}]&[Rescale[Subdivide[n1,n2,#1 k1],{n1,n2},#2]&];
tf[n1_,n2_,k1_,k2_,s_,w_,if_]:=tf[n1,n2,n1,n2,k1,k2,1,1,s,w,if];
tf[n1_,n2_,k1_,k2_,s_,w_]:=tf[n1,n2,n1,n2,k1,k2,1,1,s,w,0];
