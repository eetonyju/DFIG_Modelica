within DFIG_Modelica.Basic;
model ThreePhaImpedancePerMile
      extends Interfaces.ThreePhaseBranch;
      parameter Real Length = 1 "Foot";
      parameter SI.Resistance UR11 = 1 "Ohm/Mile";
      parameter SI.Resistance UR12 = 0 "UR12";
      parameter SI.Resistance UR13 = 0 "UR13";
      parameter SI.Resistance UR21 = 0 "R21";
      parameter SI.Resistance UR22 = 1 "R22";
      parameter SI.Resistance UR23 = 0 "R23";
      parameter SI.Resistance UR31 = 0 "R31";
      parameter SI.Resistance UR32 = 0 "R32";
      parameter SI.Resistance UR33 = 1 "R33";
      parameter SI.Reactance UX11 = 1 "Ohm/km";
      parameter SI.Reactance UX12 = 0 "X12";
      parameter SI.Reactance UX13 = 0 "X13";
      parameter SI.Reactance UX21 = 0 "X21";
      parameter SI.Reactance UX22 = 1 "X22";
      parameter SI.Reactance UX23 = 0 "X23";
      parameter SI.Reactance UX31 = 0 "X31";
      parameter SI.Reactance UX32 = 0 "X32";
      parameter SI.Reactance UX33 = 1 "X33";
      SI.Resistance R11 "R11";
      SI.Reactance X11 "X11";
      SI.Resistance R12 "R11";
      SI.Reactance X12 "X11";
      SI.Resistance R13 "R11";
      SI.Reactance X13 "X11";
      SI.Resistance R21 "R11";
      SI.Reactance X21 "X11";
      SI.Resistance R22 "R11";
      SI.Reactance X22 "X11";
      SI.Resistance R23 "R11";
      SI.Reactance X23 "X11";
      SI.Resistance R31 "R11";
      SI.Reactance X31 "X11";
      SI.Resistance R32 "R11";
      SI.Reactance X32 "X11";
      SI.Resistance R33 "R11";
      SI.Reactance X33 "X11";
    equation
      R11 = UR11 * Length * Constants.foot2mile;
      R12 = UR12 * Length * Constants.foot2mile;
      R13 = UR13 * Length * Constants.foot2mile;
      R21 = UR21 * Length * Constants.foot2mile;
      R22 = UR22 * Length * Constants.foot2mile;
      R23 = UR23 * Length * Constants.foot2mile;
      R31 = UR31 * Length * Constants.foot2mile;
      R32 = UR32 * Length * Constants.foot2mile;
      R33 = UR33 * Length * Constants.foot2mile;
      X11 = UX11 * Length * Constants.foot2mile;
      X12 = UX12 * Length * Constants.foot2mile;
      X13 = UX13 * Length * Constants.foot2mile;
      X21 = UX21 * Length * Constants.foot2mile;
      X22 = UX22 * Length * Constants.foot2mile;
      X23 = UX23 * Length * Constants.foot2mile;
      X31 = UX31 * Length * Constants.foot2mile;
      X32 = UX32 * Length * Constants.foot2mile;
      X33 = UX33 * Length * Constants.foot2mile;
      v1Re = R11 * i1Re + R12 * i2Re + R13 * i3Re - X11 * i1Im - X12 * i2Im - X13 * i3Im;
      v2Re = R21 * i1Re + R22 * i2Re + R23 * i3Re - X21 * i1Im - X22 * i2Im - X23 * i3Im;
      v3Re = R31 * i1Re + R32 * i2Re + R33 * i3Re - X31 * i1Im - X32 * i2Im - X33 * i3Im;
      v1Im = X11 * i1Re + X12 * i2Re + X13 * i3Re + R11 * i1Im + R12 * i2Im + R13 * i3Im;
      v2Im = X21 * i1Re + X22 * i2Re + X23 * i3Re + R21 * i1Im + R22 * i2Im + R23 * i3Im;
      v3Im = X31 * i1Re + X32 * i2Re + X33 * i3Re + R31 * i1Im + R32 * i2Im + R33 * i3Im;
      annotation(Diagram(graphics = {Rectangle(origin = {-68, -4}, extent = {{-2, 40}, {2, -40}}), Rectangle(origin = {6, -4}, extent = {{-2, 40}, {2, -40}}), Line(origin = {-82, 42}, points = {{-14, 6}, {14, 6}, {14, -6}, {14, -6}}), Line(origin = {-33.9048, -8.79848}, points = {{-62.0952, -41.2015}, {-54.0952, -43.2015}, {-36.0952, -43.2015}, {-36.0952, -33.2015}, {-30.0952, -33.2015}, {31.9048, 40.7985}}), Line(origin = {-18, -3}, points = {{-44, 37}}), Line(origin = {-21, 1}, points = {{-43, 37}, {9, -43}}), Line(origin = {66.8017, -0.585706}, points = {{-36.8017, 34.5857}, {19.1983, -31.4143}}), Line(origin = {68, 4}, points = {{-20, -22}}), Line(origin = {51.8025, 2.80251}, points = {{-23.8025, -34.8025}, {20.1975, 27.1975}, {20.1975, 27.1975}, {20.1975, 29.1975}, {28.1975, 41.1975}}), Rectangle(origin = {96, -3}, extent = {{-2, 37}, {2, -37}})}, coordinateSystem(initialScale = 0.1)), Icon(graphics = {Line(origin = {-98, -1}, points = {{0, 51}, {0, -51}}), Line(origin = {58, -4}, points = {{0, 52}}), Line(origin = {100, -7}, points = {{0, 49}, {0, -49}}), Line(origin = {3, 1}, points = {{-55, -37}}), Line(origin = {0, -2}, points = {{0, 42}, {0, -40}}), Bitmap(origin = {-69, 19}, extent = {{-39, 23}, {177, -55}})}, coordinateSystem(initialScale = 0.1)));
    end ThreePhaImpedancePerMile;