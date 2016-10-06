within DFIG_Modelica.Basic;
 model IdealTransformer
      extends Interfaces.TwoPhaseBranch;
      parameter Real k = 1;
    equation
      v1Re = k * v2Re;
      v1Im = k * v2Im;
      i2Re = -k * i1Re;
      i2Im = -k * i1Im;
      annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Text(extent = {{-101, 115}, {99, 57}}, lineColor = {0, 0, 255}, textString = "%name"), Ellipse(extent = {{-45, -50}, {-20, -25}}), Ellipse(extent = {{-45, -25}, {-20, 0}}), Ellipse(extent = {{-45, 0}, {-20, 25}}), Ellipse(extent = {{-45, 25}, {-20, 50}}), Rectangle(extent = {{-72, -60}, {-33, 60}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 50}, {-32, 50}}), Line(points = {{-100, -50}, {-32, -50}}), Ellipse(extent = {{20, -50}, {45, -25}}), Ellipse(extent = {{20, -25}, {45, 0}}), Ellipse(extent = {{20, 0}, {45, 25}}), Ellipse(extent = {{20, 25}, {45, 50}}), Rectangle(extent = {{33, -60}, {72, 60}}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{32, 50}, {100, 50}}), Line(points = {{32, -50}, {100, -50}}), Text(extent = {{-18, -70}, {20, -98}}, textString = "n=%n")}), Diagram(coordinateSystem(grid = {1, 1}, initialScale = 0.1), graphics = {Ellipse(extent = {{-45, -50}, {-20, -25}}, endAngle = 360), Ellipse(extent = {{-45, -25}, {-20, 0}}, endAngle = 360), Ellipse(extent = {{-45, 0}, {-20, 25}}, endAngle = 360), Ellipse(extent = {{-45, 25}, {-20, 50}}, endAngle = 360), Rectangle(origin = {0, -2}, lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-72, -60}, {-33, 60}}), Line(points = {{-100, 50}, {-33, 50}}), Line(points = {{-100, -50}, {-32, -50}}), Ellipse(extent = {{20, -50}, {45, -25}}, endAngle = 360), Ellipse(extent = {{20, -25}, {45, 0}}, endAngle = 360), Ellipse(extent = {{20, 0}, {45, 25}}, endAngle = 360), Ellipse(extent = {{20, 25}, {45, 50}}, endAngle = 360), Rectangle(lineColor = {255, 255, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{33, -60}, {72, 60}}), Line(points = {{32, 50}, {100, 50}}), Line(points = {{32, -50}, {100, -50}}), Text(origin = {-50, 0.5}, extent = {{-1, 0.5}, {1, -0.5}}, textString = "1", fontSize = 200, fontName = "DejaVu Sans Mono"), Text(origin = {41, 5}, extent = {{-1, 6}, {1, -6}}, textString = "2", fontSize = 200, fontName = "DejaVu Sans Mono")}), Window(x = 0.26, y = 0.43, width = 0.6, height = 0.6));
    end IdealTransformer;