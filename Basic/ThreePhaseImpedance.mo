 within DFIG_Modelica.Basic;

model ThreePhaseImpedance
      extends Interfaces.ThreePhaseBranch;
      parameter SI.Resistance R11 = 1 "R11";
      parameter SI.Reactance X11 = 1 "X11";
      parameter SI.Resistance R12 = 0 "R12";
      parameter SI.Reactance X12 = 0 "X12";
      parameter SI.Resistance R13 = 0 "R13";
      parameter SI.Reactance X13 = 0 "X13";
      parameter SI.Resistance R21 = 0 "R21";
      parameter SI.Reactance X21 = 0 "X21";
      parameter SI.Resistance R22 = 1 "R22";
      parameter SI.Reactance X22 = 1 "X22";
      parameter SI.Resistance R23 = 0 "R23";
      parameter SI.Reactance X23 = 0 "X23";
      parameter SI.Resistance R31 = 0 "R31";
      parameter SI.Reactance X31 = 0 "X31";
      parameter SI.Resistance R32 = 0 "R32";
      parameter SI.Reactance X32 = 0 "X32";
      parameter SI.Resistance R33 = 1 "R33";
      parameter SI.Reactance X33 = 1 "X33";
    equation
      v1Re = R11 * i1Re + R12 * i2Re + R13 * i3Re - X11 * i1Im - X12 * i2Im - X13 * i3Im;
      v2Re = R21 * i1Re + R22 * i2Re + R23 * i3Re - X21 * i1Im - X22 * i2Im - X23 * i3Im;
      v3Re = R31 * i1Re + R32 * i2Re + R33 * i3Re - X31 * i1Im - X32 * i2Im - X33 * i3Im;
      v1Im = X11 * i1Re + X12 * i2Re + X13 * i3Re + R11 * i1Im + R12 * i2Im + R13 * i3Im;
      v2Im = X21 * i1Re + X22 * i2Re + X23 * i3Re + R21 * i1Im + R22 * i2Im + R23 * i3Im;
      v3Im = X31 * i1Re + X32 * i2Re + X33 * i3Re + R31 * i1Im + R32 * i2Im + R33 * i3Im;
      annotation(Diagram(graphics = {Rectangle(origin = {-68, -2}, extent = {{-2, 40}, {2, -40}}), Rectangle(origin = {34, -2}, extent = {{-2, 40}, {2, -40}}), Line(origin = {-82, 44}, points = {{-14, 6}, {14, 6}, {14, -6}, {14, -6}}), Line(origin = {-31.9048, -8.79848}, points = {{-62.0952, -41.2015}, {-54.0952, -43.2015}, {-36.0952, -43.2015}, {-36.0952, -33.2015}, {-36.0952, -33.2015}, {61.9048, 42.7985}}), Line(origin = {-18, -3}, points = {{-44, 37}}), Line(origin = {-19, -1}, points = {{-43, 37}, {43, -37}}), Line(origin = {66.0154, 44.9998}, points = {{31.9846, 5.00024}, {-32.0154, 7.00024}, {-32.0154, -6.99976}}), Line(origin = {66.04, -48}, points = {{31.9568, -4}, {9.95679, -6}, {-32.0432, -6}, {-32.0432, 6}}), Line(origin = {66.8017, -0.585706}, points = {{-24.8017, 36.5857}, {25.1983, -37.4143}}), Line(origin = {68, 4}, points = {{-20, -22}})}, coordinateSystem(initialScale = 0.1)), Icon(graphics = {Line(origin = {-98, -1}, points = {{0, 51}, {0, -51}}), Line(origin = {58, -4}, points = {{0, 52}}), Line(origin = {100, -7}, points = {{0, 49}, {0, -49}}), Line(origin = {3, 1}, points = {{-55, -37}}), Line(origin = {0, -2}, points = {{0, 42}, {0, -40}}), Bitmap(origin = {-69, 19}, extent = {{-39, 23}, {177, -55}})}, coordinateSystem(initialScale = 0.1)));
    end ThreePhaseImpedance;