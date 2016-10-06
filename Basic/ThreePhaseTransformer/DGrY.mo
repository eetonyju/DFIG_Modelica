
within DFIG_Modelica.Basic.ThreePhaseTransformer;

model DGrY
        parameter Real N1 = 0.1;
        parameter Real N2 = 0.1;
        parameter Real Vb = 0.1 "kV";
        parameter Real Sb = 0.1 "kVA";
        parameter Real Rp = 0.1 "%";
        parameter Real Xp = 0.1 "%";
        IdealTransformer idealTransformer1(k = N1 / N2) annotation(Placement(visible = true, transformation(origin = {10, 56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Basic.IdealTransformer idealTransformer2(k = N1 / N2) annotation(Placement(visible = true, transformation(origin = {4, -4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        IdealTransformer idealTransformer3(k = N1 / N2) annotation(Placement(visible = true, transformation(origin = {10, -66}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin annotation(Placement(visible = true, transformation(origin = {-90, 58}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-80, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin1 annotation(Placement(visible = true, transformation(origin = {-90, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-80, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin2 annotation(Placement(visible = true, transformation(origin = {-90, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.TONode pin_n annotation(Placement(visible = true, transformation(origin = {96, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.TONode pin_n1 annotation(Placement(visible = true, transformation(origin = {94, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.TONode pin_n2 annotation(Placement(visible = true, transformation(origin = {94, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {80, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Basic.Ground ground1 annotation(Placement(visible = true, transformation(origin = {34, -100}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaseImpedance onePhaseImpedance1(R = Vb * Vb * 1000 / Sb * Rp, X = Vb * Vb * 1000 / Sb * Xp) annotation(Placement(visible = true, transformation(origin = {56, 64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaseImpedance onePhaseImpedance2(R = Vb * Vb * 1000 / Sb * Rp, X = Vb * Vb * 1000 / Sb * Xp) annotation(Placement(visible = true, transformation(origin = {58, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaseImpedance onePhaseImpedance3(R = Vb * Vb * 1000 / Sb * Rp, X = Vb * Vb * 1000 / Sb * Xp) annotation(Placement(visible = true, transformation(origin = {64, -62}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(idealTransformer3.n1, idealTransformer1.p1) annotation(Line(points = {{0, -70}, {-34, -70}, {-34, 74}, {0, 74}, {0, 62}, {0, 62}}, color = {0, 0, 255}));
        connect(idealTransformer2.n1, idealTransformer3.p1) annotation(Line(points = {{-6, -8}, {-12, -8}, {-12, -62}, {0, -62}, {0, -60}}, color = {0, 0, 255}));
        connect(idealTransformer1.n1, idealTransformer2.p1) annotation(Line(points = {{0, 52}, {-12, 52}, {-12, 2}, {-6, 2}, {-6, 2}}, color = {0, 0, 255}));
        connect(idealTransformer1.n2, ground1.p) annotation(Line(points = {{20, 52}, {44, 52}, {44, -90}, {34, -90}, {34, -90}}, color = {0, 0, 255}));
        connect(idealTransformer2.n2, ground1.p) annotation(Line(points = {{14, -8}, {34, -8}, {34, -90}, {34, -90}}, color = {0, 0, 255}));
        connect(idealTransformer3.n2, ground1.p) annotation(Line(points = {{20, -70}, {20, -76}, {34, -76}, {34, -90}}, color = {0, 0, 255}));
        connect(onePhaseImpedance2.n, pin_n1) annotation(Line(points = {{68, 0}, {68, 0}, {68, 18}, {94, 18}, {94, 0}, {94, 0}}, color = {0, 0, 255}));
        connect(onePhaseImpedance1.n, pin_n) annotation(Line(points = {{66, 64}, {68, 64}, {68, 82}, {96, 82}, {96, 60}, {96, 60}}, color = {0, 0, 255}));
        connect(onePhaseImpedance3.n, pin_n2) annotation(Line(points = {{74, -62}, {76, -62}, {76, -76}, {94, -76}, {94, -62}, {94, -62}}, color = {0, 0, 255}));
        connect(onePhaseImpedance1.p, idealTransformer1.p2) annotation(Line(points = {{46, 64}, {20, 64}, {20, 62}, {20, 62}}, color = {0, 0, 255}));
        connect(idealTransformer3.p2, onePhaseImpedance3.p) annotation(Line(points = {{20, -60}, {48, -60}, {48, -62}, {54, -62}, {54, -62}}, color = {0, 0, 255}));
        connect(pin1, idealTransformer2.p1) annotation(Line(points = {{-90, 2}, {-72, 2}, {-72, -2}, {-6, -2}, {-6, 1}}, color = {0, 0, 255}));
        connect(idealTransformer2.p2, onePhaseImpedance2.p) annotation(Line(points = {{14, 1}, {42, 1}, {42, 0}, {48, 0}}, color = {0, 0, 255}));
        connect(pin2, idealTransformer3.p1) annotation(Line(points = {{-90, -60}, {-88, -60}, {-88, -32}, {0, -32}, {0, -60}, {0, -60}}, color = {0, 0, 255}));
        connect(idealTransformer1.p1, pin) annotation(Line(points = {{0, 62}, {-90, 62}, {-90, 58}, {-90, 58}}, color = {0, 0, 255}));
        annotation(Icon(graphics = {Text(origin = {-58, 72}, extent = {{-6, 4}, {6, -4}}, textString = "A", fontSize = 50), Text(origin = {-58, 6}, extent = {{-6, 4}, {6, -4}}, textString = "B", fontSize = 50), Text(origin = {-58, -60}, extent = {{-6, 4}, {6, -4}}, textString = "C", fontSize = 50), Ellipse(origin = {-21, 2}, extent = {{-27, 54}, {39, -50}}, endAngle = 360), Ellipse(origin = {31, 1}, extent = {{29, 55}, {-33, -51}}, endAngle = 360), Text(origin = {-22, 4}, rotation = 90, extent = {{-12, 28}, {16, -28}}, textString = "D", fontSize = 100, textStyle = {TextStyle.Bold}), Text(origin = {40, 5}, rotation = 90, extent = {{-10, 25}, {10, -25}}, textString = "Y", fontSize = 100, textStyle = {TextStyle.Bold})}, coordinateSystem(initialScale = 0.1)));
      end DGrY;