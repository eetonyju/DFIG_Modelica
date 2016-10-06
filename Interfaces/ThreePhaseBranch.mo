
  within DFIG_Modelica.Interfaces;  
	
	partial model ThreePhaseBranch
      SI.Voltage v1Re;
      SI.Voltage v1Im;
      SI.Voltage v2Re;
      SI.Voltage v2Im;
      SI.Voltage v3Re;
      SI.Voltage v3Im;
      SI.Current i1Re;
      SI.Current i1Im;
      SI.Current i2Re;
      SI.Current i2Im;
      SI.Current i3Re;
      SI.Current i3Im;
      FRNode p1 annotation(Placement(transformation(extent = {{-110, 40}, {-90, 60}}, rotation = 0)));
      DFIG_Modelica.Interfaces.FRNode p2 annotation(Placement(visible = true, transformation(extent = {{10, 39}, {-10, 59}}, rotation = 0), iconTransformation(extent = {{7, 42}, {-13, 62}}, rotation = 0)));
      TONode n1 annotation(Placement(transformation(extent = {{-90, -60}, {-110, -40}}, rotation = 0)));
      DFIG_Modelica.Interfaces.TONode n2 annotation(Placement(visible = true, transformation(extent = {{-10, -61}, {10, -41}}, rotation = 0), iconTransformation(extent = {{-10, -61}, {10, -41}}, rotation = 0)));
      DFIG_Modelica.Interfaces.FRNode p3 annotation(Placement(visible = true, transformation(origin = {97, 51}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {92, 51}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      DFIG_Modelica.Interfaces.TONode n3 annotation(Placement(visible = true, transformation(origin = {96, -51}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {90, -53}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      v1Re = p1.vRe - n1.vRe;
      v1Im = p1.vIm - n1.vIm;
      v2Re = p2.vRe - n2.vRe;
      v2Im = p2.vIm - n2.vIm;
      v3Re = p3.vRe - n3.vRe;
      v3Im = p3.vIm - n3.vIm;
      0 = p1.iRe + n1.iRe;
      0 = p1.iIm + n1.iIm;
      0 = p2.iRe + n2.iRe;
      0 = p2.iIm + n2.iIm;
      0 = p3.iRe + n3.iRe;
      0 = p3.iIm + n3.iIm;
      i1Re = p1.iRe;
      i1Im = p1.iIm;
      i2Re = p2.iRe;
      i2Im = p2.iIm;
      i3Re = p3.iRe;
      i3Im = p3.iIm;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, grid = {1, 1}, initialScale = 0.1), graphics = {Polygon(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{-120, 53}, {-110, 50}, {-120, 47}, {-120, 53}}), Line(points = {{-136, 50}, {-111, 50}}, color = {160, 160, 164}), Polygon(origin = {-100, -1}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{127, -47}, {137, -50}, {127, -53}, {127, -47}}), Line(origin = {-100, -1}, points = {{111, -50}, {136, -50}}, color = {160, 160, 164}), Text(origin = {-100, -1}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{112, -44}, {128, -29}}, textString = "i2", fontName = "DejaVu Sans Mono"), Text(origin = {-100, -1}, fillColor = {160, 160, 164}, fillPattern = FillPattern.HorizontalCylinder, extent = {{118, 52}, {135, 67}}, textString = "i2", fontName = "DejaVu Sans Mono"), Polygon(origin = {-100, -1}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.HorizontalCylinder, points = {{120, 53}, {110, 50}, {120, 47}, {120, 53}}), Line(origin = {-100, -1}, points = {{111, 50}, {136, 50}}, color = {160, 160, 164}), Line(points = {{-136, -49}, {-111, -49}}, color = {160, 160, 164}), Polygon(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, points = {{-126, -46}, {-136, -49}, {-126, -52}, {-126, -46}}), Text(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-127, -46}, {-110, -31}}, textString = "i1", fontName = "DejaVu Sans Mono"), Text(lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, extent = {{-136, 53}, {-119, 68}}, textString = "i1", fontName = "DejaVu Sans Mono")}), Window(x = 0.16, y = 0.12, width = 0.6, height = 0.6), Icon(coordinateSystem(preserveAspectRatio = false, grid = {1, 1}, initialScale = 0.1), graphics = {Text(origin = {-81.5, 32}, extent = {{-2.5, 4}, {2.5, -4}}, textString = "A"), Text(origin = {0.5, 31}, extent = {{-2.5, 4}, {2.5, -4}}, textString = "B"), Text(origin = {89.5, 31}, extent = {{-2.5, 4}, {2.5, -4}}, textString = "C")}));
    end ThreePhaseBranch;