 within DFIG_Modelica.Interfaces;
model OnePhaseBranch "General One Phase Branch Definition"
      SI.Voltage vRe(start = 1.1) "Real voltage";
      SI.Voltage vIm(start = 0.1) "Imagine voltage";
      SI.Current iRe(start = 0.1) "Real Current";
      SI.Current iIm(start = 0.1) "Imagine Current";
      FRNode p annotation(Placement(transformation(extent = {{-110, -10}, {-90, 10}}, rotation = 0)));
      TONode n annotation(Placement(transformation(extent = {{110, -10}, {90, 10}}, rotation = 0)));
    equation
      vRe = p.vRe - n.vRe;
      vIm = p.vIm - n.vIm;
      0 = p.iRe + n.iRe;
      0 = p.iIm + n.iIm;
      iRe = p.iRe;
      iIm = p.iIm;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Line(points = {{-110, 20}, {-85, 20}}, color = {160, 160, 164}), Polygon(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{-95, 23}, {-85, 20}, {-95, 17}, {-95, 23}}), Line(points = {{90, 20}, {115, 20}}, color = {160, 160, 164}), Line(points = {{-125, 0}, {-115, 0}}, color = {160, 160, 164}), Line(points = {{-120, -5}, {-120, 5}}, color = {160, 160, 164}), Text(lineColor = {160, 160, 164}, extent = {{-110, 25}, {-90, 45}}, textString = "i"), Polygon(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{105, 23}, {91, 20}, {105, 17}, {105, 23}}), Line(points = {{115, 0}, {125, 0}}, color = {160, 160, 164}), Text(lineColor = {160, 160, 164}, extent = {{90, 45}, {110, 25}}, textString = "i")}), Window(x = 0.33, y = 0.04, width = 0.63, height = 0.67), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics));
    end OnePhaseBranch;