within DFIG_Modelica.Basic.ThreePhaPQLoad;
model Y0Load
        parameter SI.ActivePower P1 = 0.1 "Active Power";
        parameter SI.ReactivePower Q1 = 0.1 "Reactive Power";
        parameter SI.ActivePower P2 = 0.1 "Active Power";
        parameter SI.ReactivePower Q2 = 0.1 "Reactive Power";
        parameter SI.ActivePower P3 = 0.1 "Active Power";
        parameter SI.ReactivePower Q3 = 0.1 "Reactive Power";
        Ground ground1 annotation(Placement(visible = true, transformation(origin = {58, 25}, extent = {{-8, -7}, {8, 7}}, rotation = 0)));
        Ground ground2 annotation(Placement(visible = true, transformation(origin = {60, -3}, extent = {{-8, -7}, {8, 7}}, rotation = 0)));
        Ground ground3 annotation(Placement(visible = true, transformation(origin = {60, -38}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin1 annotation(Placement(visible = true, transformation(origin = {-90, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin2 annotation(Placement(visible = true, transformation(origin = {-90, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        DFIG_Modelica.Interfaces.FRNode pin3 annotation(Placement(visible = true, transformation(origin = {-90, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-90, -46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaPQLoad onePhaPQLoad1(P = P1, Q = Q1) annotation(Placement(visible = true, transformation(origin = {-18, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaPQLoad onePhaPQLoad2(P = P2, Q = Q2) annotation(Placement(visible = true, transformation(origin = {-18, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        OnePhaPQLoad onePhaPQLoad3(P = P3, Q = Q3) annotation(Placement(visible = true, transformation(origin = {-16, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(ground3.p, onePhaPQLoad3.n) annotation(Line(points = {{60, -30}, {-6, -30}, {-6, -30}, {-6, -30}}, color = {0, 0, 255}));
        connect(pin3, onePhaPQLoad3.p) annotation(Line(points = {{-90, -30}, {-26, -30}, {-26, -30}, {-26, -30}}, color = {0, 0, 255}));
        connect(onePhaPQLoad1.n, ground1.p) annotation(Line(points = {{-8, 30}, {48, 30}, {48, 34}, {58, 34}, {58, 32}, {58, 32}}, color = {0, 0, 255}));
        connect(onePhaPQLoad2.n, ground2.p) annotation(Line(points = {{-8, 2}, {60, 2}, {60, 4}, {60, 4}}, color = {0, 0, 255}));
        connect(pin2, onePhaPQLoad2.p) annotation(Line(points = {{-90, 2}, {-28, 2}, {-28, 2}, {-28, 2}}, color = {0, 0, 255}));
        connect(pin1, onePhaPQLoad1.p) annotation(Line(points = {{-90, 30}, {-28, 30}, {-28, 30}, {-28, 30}}, color = {0, 0, 255}));
        annotation(Icon(graphics = {Text(origin = {-76, 51}, extent = {{12, -3}, {-2, 1}}, textString = "A", fontSize = 50), Text(origin = {-78, 9}, extent = {{18, -15}, {-2, 1}}, textString = "B", fontSize = 50), Text(origin = {-68, -11}, extent = {{-4, -71}, {-2, 1}}, textString = "C", fontSize = 50), Polygon(origin = {53.7774, 0.96881}, points = {{-19.7773, 31.0312}, {-19.7773, -26.9688}, {6.22265, -0.968812}, {6.22265, -0.968812}, {6.22265, -0.968812}, {-19.7773, 31.0312}}), Rectangle(origin = {-8, 3}, extent = {{-42, 15}, {42, -15}})}, coordinateSystem(initialScale = 0.1)));
      end Y0Load;