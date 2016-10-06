 within DFIG_Modelica.Basic;
 model OnePhaImpedancePerMile
      extends Interfaces.OnePhaseBranch;
      parameter Real Length = 1 "Foot";
      parameter SI.Resistance UR11 = 1 "R11";
      parameter SI.Reactance UX11 = 1 "X11";
      SI.Resistance R11 "R11";
      SI.Reactance X11 "X11";
    equation
      R11 = UR11 * Length * Constants.foot2mile;
      X11 = UX11 * Length * Constants.foot2mile;
      vRe = R11 * iRe - X11 * iIm;
      vIm = X11 * iRe + R11 * iIm;
      annotation(Icon(coordinateSystem(initialScale = 0.1), graphics = {Rectangle(origin = {-4, -7}, extent = {{-68, 27}, {68, -27}}), Text(origin = {-11, -7}, extent = {{-45, 17}, {45, -17}}, textString = "R+jX", fontSize = 80)}));
    end OnePhaImpedancePerMile;
