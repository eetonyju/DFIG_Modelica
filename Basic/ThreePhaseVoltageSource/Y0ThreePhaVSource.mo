within DFIG_Modelica.Basic.ThreePhaseVoltageSource;

 model Y0ThreePhaVSource

        parameter SI.Voltage Vmag1 = 1;
        parameter SI.Angle Vangle1 = 0;
        parameter SI.Voltage Vmag2 = 1;
        parameter SI.Angle Vangle2 = 0;
        parameter SI.Voltage Vmag3 = 1;
        parameter SI.Angle Vangle3 = 0;
        VoltageSource voltageSource1(Vangle = Vangle1, Vmag = Vmag1) annotation(Placement(visible = true, transformation(origin = {4, 36}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
        VoltageSource voltageSource2(Vangle = Vangle2, Vmag = Vmag2) annotation(Placement(visible = true, transformation(origin = {2, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
        VoltageSource voltageSource3(Vangle = Vangle3, Vmag = Vmag3) annotation(Placement(visible = true, transformation(origin = {4, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
        Interfaces.FRNode pin1 annotation(Placement(visible = true, transformation(origin = {94, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {94, 76}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Interfaces.FRNode pin2 annotation(Placement(visible = true, transformation(origin = {92, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {92, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Interfaces.FRNode pin3 annotation(Placement(visible = true, transformation(origin = {94, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {94, -64}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Ground ground1 annotation(Placement(visible = true, transformation(origin = {-52, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
        connect(voltageSource3.p, pin3) annotation(Line(points = {{14, -30}, {34, -30}, {34, -64}, {94, -64}, {94, -64}}, color = {0, 0, 255}));
        connect(voltageSource2.p, pin2) annotation(Line(points = {{12, 2}, {42, 2}, {42, 6}, {92, 6}, {92, 6}}, color = {0, 0, 255}));
        connect(voltageSource1.p, pin1) annotation(Line(points = {{14, 36}, {18, 36}, {18, 76}, {94, 76}, {94, 76}}, color = {0, 0, 255}));
        connect(voltageSource1.n, ground1.p) annotation(Line(points = {{-6, 36}, {-68, 36}, {-68, -36}, {-68, -36}, {-68, -46}, {-52, -46}, {-52, -46}}, color = {0, 0, 255}));
        connect(voltageSource2.n, ground1.p) annotation(Line(points = {{-8, 2}, {-84, 2}, {-84, -48}, {-52, -48}, {-52, -46}, {-52, -46}}, color = {0, 0, 255}));
        connect(voltageSource3.n, ground1.p) annotation(Line(points = {{-6, -30}, {-42, -30}, {-42, -30}, {-52, -30}, {-52, -46}, {-52, -46}}, color = {0, 0, 255}));
        annotation(Icon(graphics = {Ellipse(origin = {3, -38}, lineThickness = 0.75, extent = {{-49, -2}, {45, 94}}, endAngle = 360), Text(origin = {76, 80}, extent = {{4, -2}, {-4, 2}}, textString = "A", fontSize = 50), Text(origin = {75, -63}, extent = {{-1, 3}, {1, -3}}, textString = "C", fontSize = 50), Line(origin = {1, 11}, points = {{1, -21}, {-5, -17}, {-7, -11}, {-5, -5}, {1, -1}, {5, 3}, {7, 7}, {5, 13}, {3, 17}, {-3, 19}, {-3, 19}}, thickness = 0.75), Text(origin = {81, -25}, extent = {{-15, 69}, {1, -3}}, textString = "B", fontSize = 50)}, coordinateSystem(initialScale = 0.1)));      end Y0ThreePhaVSource;