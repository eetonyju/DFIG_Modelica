    
	within DFIG_Modelica.Basic;
	model ThreePhaseShuntPerMile
      extends Interfaces.ThreePhaseBranch;
      parameter Real Length = 1 "Foot";
      parameter Real UG11 = 1 "G11";
      parameter Real UG12 = 1;
      parameter Real UG13 = 1;
      parameter Real UG21 = 1;
      parameter Real UG22 = 1;
      parameter Real UG23 = 1;
      parameter Real UG31 = 1;
      parameter Real UG32 = 1;
      parameter Real UG33 = 1;
      parameter Real UB11 = 1 "G11";
      parameter Real UB12 = 1;
      parameter Real UB13 = 1;
      parameter Real UB21 = 1;
      parameter Real UB22 = 1;
      parameter Real UB23 = 1;
      parameter Real UB31 = 1;
      parameter Real UB32 = 1;
      parameter Real UB33 = 1;
      SI.Resistance G11;
      SI.Resistance G12;
      SI.Resistance G13;
      SI.Resistance G21;
      SI.Resistance G22;
      SI.Resistance G23;
      SI.Resistance G31;
      SI.Resistance G32;
      SI.Resistance G33;
      SI.Resistance B11;
      SI.Resistance B12;
      SI.Resistance B13;
      SI.Resistance B21;
      SI.Resistance B22;
      SI.Resistance B23;
      SI.Resistance B31;
      SI.Resistance B32;
      SI.Resistance B33;
    equation
      G11 = UG11 * Length * Constants.foot2mile;
      G12 = UG12 * Length * Constants.foot2mile;
      G13 = UG13 * Length * Constants.foot2mile;
      G21 = UG21 * Length * Constants.foot2mile;
      G22 = UG22 * Length * Constants.foot2mile;
      G23 = UG23 * Length * Constants.foot2mile;
      G31 = UG31 * Length * Constants.foot2mile;
      G32 = UG32 * Length * Constants.foot2mile;
      G33 = UG33 * Length * Constants.foot2mile;
      B11 = UB11 * Length * Constants.foot2mile;
      B12 = UB12 * Length * Constants.foot2mile;
      B13 = UB13 * Length * Constants.foot2mile;
      B21 = UB21 * Length * Constants.foot2mile;
      B22 = UB22 * Length * Constants.foot2mile;
      B23 = UB23 * Length * Constants.foot2mile;
      B31 = UB31 * Length * Constants.foot2mile;
      B32 = UB32 * Length * Constants.foot2mile;
      B33 = UB33 * Length * Constants.foot2mile;
      i1Re = G11 * v1Re + G12 * v2Re + G13 * v3Re - B11 * v1Im - B12 * v2Im - B13 * v3Im;
      i2Re = G21 * v1Re + G22 * v2Re + G23 * v3Re - B21 * v1Im - B22 * v2Im - B23 * v3Im;
      i3Re = G31 * v1Re + G32 * v2Re + G33 * v3Re - B31 * v1Im - B32 * v2Im - B33 * v3Im;
      i1Im = B11 * v1Re + B12 * v2Re + B13 * v3Re + G11 * v1Im + G12 * v2Im + G13 * v3Im;
      i2Im = B21 * v1Re + B22 * v2Re + B23 * v3Re + G21 * v1Im + G22 * v2Im + G23 * v3Im;
      i3Im = B31 * v1Re + B32 * v2Re + B33 * v3Re + G31 * v1Im + G32 * v2Im + G33 * v3Im;
      annotation(Icon(graphics = {Polygon(origin = {-85.0097, -3.34916}, points = {{-4.99029, 25.3492}, {-4.99029, -24.6508}, {3.00971, -20.6508}, {-4.99029, 25.3492}, {5.00971, -24.6508}, {-4.99029, 25.3492}}), Polygon(origin = {2.57103, -2.40055}, points = {{-4.57103, 28.4006}, {-6.57103, -27.5994}, {7.42897, -25.5994}, {5.42897, -25.5994}, {5.42897, -23.5994}, {-4.57103, 28.4006}}), Polygon(origin = {91.9976, -3.44855}, points = {{-1.99764, 29.4486}, {-3.99764, -28.5514}, {4.00236, -28.5514}, {-1.99764, 29.4486}})}, coordinateSystem(initialScale = 0.1)));
    end ThreePhaseShuntPerMile;