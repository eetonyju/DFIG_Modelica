
    within DFIG_Modelica.Interfaces; 
	partial model TwoPhaseBranch
      SI.Voltage v1Re;
      SI.Voltage v1Im;
      SI.Voltage v2Re;
      SI.Voltage v2Im;
      SI.Current i1Re;
      SI.Current i1Im;
      SI.Current i2Re;
      SI.Current i2Im;
      FRNode p1 annotation(Placement(transformation(extent = {{-110, 40}, {-90, 60}}, rotation = 0)));
      FRNode p2 annotation(Placement(transformation(extent = {{110, 40}, {90, 60}}, rotation = 0)));
      TONode n1 annotation(Placement(transformation(extent = {{-90, -60}, {-110, -40}}, rotation = 0)));
      TONode n2 annotation(Placement(transformation(extent = {{90, -60}, {110, -40}}, rotation = 0)));
    equation
      v1Re = p1.vRe - n1.vRe;
      v1Im = p1.vIm - n1.vIm;
      v2Re = p2.vRe - n2.vRe;
      v2Im = p2.vIm - n2.vIm;
      0 = p1.iRe + n1.iRe;
      0 = p1.iIm + n1.iIm;
      0 = p2.iRe + n2.iRe;
      0 = p2.iIm + n2.iIm;
      i1Re = p1.iRe;
      i1Im = p1.iIm;
      i2Re = p2.iRe;
      i2Im = p2.iIm;
      annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Polygon(points = {{-120, 53}, {-110, 50}, {-120, 47}, {-120, 53}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Line(points = {{-136, 50}, {-111, 50}}, color = {160, 160, 164}), Polygon(points = {{127, -47}, {137, -50}, {127, -53}, {127, -47}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Line(points = {{111, -50}, {136, -50}}, color = {160, 160, 164}), Text(extent = {{112, -44}, {128, -29}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, textString = "i2"), Text(extent = {{118, 52}, {135, 67}}, lineColor = {0, 0, 0}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {160, 160, 164}, textString = "i2"), Polygon(points = {{120, 53}, {110, 50}, {120, 47}, {120, 53}}, lineColor = {160, 160, 164}, fillPattern = FillPattern.HorizontalCylinder, fillColor = {160, 160, 164}), Line(points = {{111, 50}, {136, 50}}, color = {160, 160, 164}), Line(points = {{-136, -49}, {-111, -49}}, color = {160, 160, 164}), Polygon(points = {{-126, -46}, {-136, -49}, {-126, -52}, {-126, -46}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid), Text(extent = {{-127, -46}, {-110, -31}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, textString = "i1"), Text(extent = {{-136, 53}, {-119, 68}}, lineColor = {160, 160, 164}, fillColor = {160, 160, 164}, fillPattern = FillPattern.Solid, textString = "i1")}), Window(x = 0.16, y = 0.12, width = 0.6, height = 0.6), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics));
    end TwoPhaseBranch;