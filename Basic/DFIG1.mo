within DFIG_Modelica.Basic;
model DFIG1
  import Modelica.ComplexMath.conj;
  import Modelica.ComplexMath.real;
  import Modelica.ComplexMath.imag;
  import Modelica.ComplexMath.j;
  parameter Real Rr = 0.007 "p.u.";
  parameter Real s_p = -0.1 "slip";
  //s=(ws-wr)/ws<0,s
  parameter Real s_n = 2.0 - s_p;
  parameter Real Rs = 0.0092 "p.u.";
  parameter Real Xs = 0.0717 "p.u.";
  parameter Real Xm = 4.13 "p.u.";
  parameter Real Xr = 0.0717 "p.u.";
  parameter Real P_DFIG_p = 0.5 "p.u.";
  parameter Real Q_DFIG_p = 0.0 "p.u.";
  parameter Real Qs_sp_p = 0.0;
  // parameter Real q_p_s_sp=0.0 "p.u.";
  // parameter Real qgsc=0.0 "p.u.";
  parameter Real Rg = 1.89e-3 "p.u.";
  parameter Real Xg = 0.032 "p.u.";
  //parameter Complex Upc_a=0.897*cos(49.805*Modelica.Constants.pi/180)+j*0.897*sin(49.805*Modelica.Constants.pi/180);
  //parameter Complex Upc_b=0.915*cos(-71.313*Modelica.Constants.pi/180)+j*0.915*sin(-71.313*Modelica.Constants.pi/180);
  //parameter Complex Upc_c=0.888*cos(168.887*Modelica.Constants.pi/180)+j*0.888*sin(168.887*Modelica.Constants.pi/180);
  Complex Upc_a;
  Complex Upc_b;
  Complex Upc_c;
  Complex Ipc_a;
  Complex Ipc_b;
  Complex Ipc_c;
  Complex Ig_a;
  Complex Ig_b;
  Complex Ig_c;
  Complex Is_a;
  Complex Is_b;
  Complex Is_c;
  Complex I_gnet_0;
  Complex I_gnet_p;
  Complex I_gnet_n;
  Complex I_snet_0;
  Complex I_snet_p;
  Complex I_snet_n;
  Complex Upc_0;
  Complex Upc_p;
  Complex Upc_n;
  Complex I_rnet_p;
  Complex I_rnet_n;
  Complex U_r_p;
  Complex U_r_n;
  parameter Complex a = cos(2 * Modelica.Constants.pi / 3) + j * sin(2 * Modelica.Constants.pi / 3);
  DFIG_Modelica.Interfaces.FRNode pinA annotation(Placement(visible = true, transformation(origin = {-92, 66}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-76, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DFIG_Modelica.Interfaces.FRNode pinB annotation(Placement(visible = true, transformation(origin = {-2, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-2, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  DFIG_Modelica.Interfaces.FRNode pinC annotation(Placement(visible = true, transformation(origin = {96, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {74, 68}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  if time == 0.0 then
    pinA.vRe = real(Upc_a);
    pinA.vIm = imag(Upc_a);
    pinB.vRe = real(Upc_b);
    pinB.vIm = imag(Upc_b);
    pinC.vRe = real(Upc_c);
    pinC.vIm = imag(Upc_c);
    pinA.iRe + real(Ipc_a) = 0;
    pinA.iIm + imag(Ipc_a) = 0;
    pinB.iRe + real(Ipc_b) = 0;
    pinB.iIm + imag(Ipc_b) = 0;
    pinC.iRe + real(Ipc_c) = 0;
    pinC.iIm + imag(Ipc_c) = 0;
    I_gnet_0 = 0 + 0 * j;
    I_gnet_n = 0 + 0 * j;
    I_gnet_p = 0 + 0 * j;
    I_rnet_n = 0 + 0 * j;
    I_rnet_p = 0 + 0.0 * j;
    U_r_n = 0.1 + 0 * j;
    U_r_p = 0.01 + 0.0 * j;
    I_snet_0 = 0 + 0 * j;
    I_snet_p = 0 + 0 * j;
    I_snet_n = 0 + 0 * j;
    Upc_a = Upc_0 + Upc_p + Upc_n;
    Upc_b = Upc_0 + a ^ 2 * Upc_p + a * Upc_n;
    Upc_c = Upc_0 + a * Upc_p + a ^ 2 * Upc_n;
    Ig_a = I_gnet_0 + I_gnet_p + I_gnet_n;
    Ig_b = I_gnet_0 + a ^ 2 * I_gnet_p + a * I_gnet_n;
    Ig_c = I_gnet_0 + a * I_gnet_p + a ^ 2 * I_gnet_n;
    Is_a = I_snet_0 + I_snet_p + I_snet_n;
    Is_b = I_snet_0 + a ^ 2 * I_snet_p + a * I_snet_n;
    Is_c = I_snet_0 + a * I_snet_p + a ^ 2 * I_snet_n;
    Ig_a + Is_a = Ipc_a;
    Ig_b + Is_b = Ipc_b;
    Ig_c + Is_c = Ipc_c;
  else
    pinA.vRe = real(Upc_a);
    pinA.vIm = imag(Upc_a);
    pinB.vRe = real(Upc_b);
    pinB.vIm = imag(Upc_b);
    pinC.vRe = real(Upc_c);
    pinC.vIm = imag(Upc_c);
    pinA.iRe + real(Ipc_a) = 0;
    pinA.iIm + imag(Ipc_a) = 0;
    pinB.iRe + real(Ipc_b) = 0;
    pinB.iIm + imag(Ipc_b) = 0;
    pinC.iRe + real(Ipc_c) = 0;
    pinC.iIm + imag(Ipc_c) = 0;
//Usap=Vs1+Vs2+Vs0;
//Usbp=a^2*Vs1+a*Vs2+Vs0;
//Uscp=a*Vs1+a^2*Vs2+Vs0;
//-Vs1  =(Rs+j*(Xs+Xm))*(Is1)+j*Xm*Ir1;
//-Vr1/s= j*Xm*(Is1)+Ir1*(Rr/s+j*(Xr+Xm));
//-Vs2=(Rs+j*(Xs+Xm))*(Is2)+j*Xm*(Ir2);
//-Vr2/(2-s)=j*Xm*(Is2)+Ir2*(Rr/(2-s)+j*(Xr+Xm));
//Ir2=0+0*j;
//psp/3.0=real(Vs1*conj(Is1));
//qsp/3.0=imag(Vs1*conj(Is1));
//real(Vr1*conj(Ir1)+Vr2*conj(Ir2))=real(conj(Igsc1)*Vs1+conj(Igsc2)*Vs2);
//Igsc2=0+0*j;
//imag(conj(Igsc1)*Vs1)=0;
    3 * imag(Upc_p * conj(I_snet_p) + Upc_p * conj(I_gnet_p)) = Q_DFIG_p;
//equation14
    conj(U_r_p / s_p) = conj(I_rnet_p) * (Rr / s_p + j * Xr) + I_snet_p * (Rs + j * Xs) + Upc_p;
//equation10
    (conj(I_rnet_p) - I_snet_p) * j * Xm - I_snet_p * (Rs + j * Xs) - Upc_p = 0 + 0 * j;
//equation11
    real(U_r_p * conj(I_rnet_p) + Upc_p * conj(I_gnet_p)) + real(U_r_n * conj(I_rnet_n) + Upc_n * conj(I_gnet_n)) = 0;
//equation7
    3 * real(Upc_p * conj(I_snet_p) + Upc_p * conj(I_gnet_p)) = P_DFIG_p;
//equation8
    imag(Upc_p * conj(I_snet_p)) = Qs_sp_p;
//equation9
    U_r_n / s_n = I_rnet_n * (Rr / s_n + j * Xr) + I_snet_n * (Rs + j * Xs) + Upc_n;
//equation15
    (I_rnet_n - I_snet_n) * j * Xm - I_snet_n * (Rs + j * Xs) - Upc_n = 0 + 0 * j;
//equation16
    I_gnet_n = 0 + 0 * j;
//equation26
    I_rnet_n = 0 + 0 * j;
//equation17
    I_snet_0 = 0 + 0 * j;
//equation29
    I_gnet_0 = 0 + 0 * j;
//equation30
/*
real(Upc_p*conj(I_gnet_n)+Upc_n*conj(I_gnet_p))=0;//27
imag(Upc_p*conj(I_gnet_n)-Upc_n*conj(I_gnet_p))=0;//28
I_snet_n=0+0*j;//equation18
real(Upc_p*conj(I_snet_n)+Upc_n*conj(I_snet_p))=0;//22
imag(Upc_p*conj(I_snet_n)-Upc_n*conj(I_snet_p))=0;//23
imag(Upc_p*conj(I_rnet_n)+Upc_n*conj(I_rnet_p))=0;//24
real(Upc_p*conj(I_rnet_n)-Upc_n*conj(I_rnet_p))=0;//25
*/
    Upc_a = Upc_0 + Upc_p + Upc_n;
    Upc_b = Upc_0 + a ^ 2 * Upc_p + a * Upc_n;
    Upc_c = Upc_0 + a * Upc_p + a ^ 2 * Upc_n;
    Ig_a = I_gnet_0 + I_gnet_p + I_gnet_n;
    Ig_b = I_gnet_0 + a ^ 2 * I_gnet_p + a * I_gnet_n;
    Ig_c = I_gnet_0 + a * I_gnet_p + a ^ 2 * I_gnet_n;
    Is_a = I_snet_0 + I_snet_p + I_snet_n;
    Is_b = I_snet_0 + a ^ 2 * I_snet_p + a * I_snet_n;
    Is_c = I_snet_0 + a * I_snet_p + a ^ 2 * I_snet_n;
    Ig_a + Is_a = Ipc_a;
    Ig_b + Is_b = Ipc_b;
    Ig_c + Is_c = Ipc_c;
  end if;
  annotation(Icon(graphics = {Text(origin = {-96, 70}, extent = {{-14, 8}, {14, -8}}, textString = "A", fontSize = 50), Text(origin = {-22, 68}, extent = {{-14, 8}, {14, -8}}, textString = "B", fontSize = 50), Rectangle(origin = {-2, -11}, extent = {{-64, 41}, {66, -41}}), Text(origin = {54, 69}, extent = {{-8, 9}, {8, -9}}, textString = "C", fontSize = 50), Text(origin = {-4, -8}, extent = {{-48, 18}, {52, -24}}, textString = "DFIG", fontSize = 100, textStyle = {TextStyle.Bold})}, coordinateSystem(initialScale = 0.1)));
end DFIG1;