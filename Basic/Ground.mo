 within DFIG_Modelica.Basic;
 model Ground
      Interfaces.FRNode p annotation(Placement(transformation(origin = {0, 100}, extent = {{10, -10}, {-10, 10}}, rotation = 270)));
    equation
      p.vRe = 0;
      p.vIm = 0;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{-60, 50}, {60, 50}}), Line(points = {{-40, 30}, {40, 30}}), Line(points = {{-20, 10}, {20, 10}}), Line(points = {{0, 100}, {0, 50}}), Text(extent = {{-144, -60}, {138, 0}}, lineColor = {0, 0, 255}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Line(points = {{-60, 50}, {60, 50}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-40, 30}, {40, 30}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{-20, 10}, {20, 10}}, color = {0, 0, 255}, thickness = 0.5), Line(points = {{0, 100}, {0, 50}}, color = {0, 0, 255}, thickness = 0.5), Text(extent = {{-24, -38}, {22, -6}}, textString = "p.v=0")}), Window(x = 0.23, y = 0.23, width = 0.59, height = 0.63));
    end Ground;