within DFIG_Modelica.Example;
model DFIG_B13
      DFIG_Modelica.Basic.ThreePhaseVoltageSource.Y0ThreePhaVSource y0ThreePhaVSource1(Vangle1 = 0, Vangle2 = -2 * Modelica.Constants.pi / 3, Vangle3 = 2 * Modelica.Constants.pi / 3, Vmag1 = 1, Vmag2 = 1, Vmag3 = 1) annotation(Placement(visible = true, transformation(origin = {-48, 74}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      DFIG_Modelica.Basic.ThreePhaseTransformer.DGrY dGrY1(N1 = 1, N2 = 1 / sqrt(3), Rp = 0.002, Sb = 10, Vb = 0.1, Xp = 0.02) annotation(Placement(visible = true, transformation(origin = {-50, 42}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile1(Lengtha = 1, UB11a = 0.1484 / 2, UB12a = -0.031 / 2, UB13a = -0.025 / 2, UB21a = -0.031 / 2, UB22a = 0.1495 / 2, UB23a = -0.03 / 2, UB31a = -0.025 / 2, UB32a = -0.03 / 2, UB33a = 0.115 / 2, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.008, UR12a = 0.004, UR13a = 0.004, UR21a = 0.004, UR22a = 0.007, UR23a = 0.004, UR31a = 0.004, UR32a = 0.004, UR33a = 0.008, UX11a = 0.055, UX12a = 0.016, UX13a = 0.011, UX21a = 0.016, UX22a = 0.054, UX23a = 0.016, UX31a = 0.011, UX32a = 0.016, UX33a = 0.055) annotation(Placement(visible = true, transformation(origin = {-16, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile2(UB11a = 0.15 / 2, UB12a = -0.03 / 2, UB13a = -0.01 / 2, UB21a = -0.03 / 2, UB22a = 0.25 / 2, UB23a = -0.02 / 2, UB31a = -0.01 / 2, UB32a = -0.02 / 2, UB33a = 0.14 / 2, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.0066, UR12a = 0.0017, UR13a = 0.0012, UR21a = 0.0017, UR22a = 0.0045, UR23a = 0.0014, UR31a = 0.0012, UR32a = 0.0014, UR33a = 0.0062, UX11a = 0.056, UX12a = 0.027, UX13a = 0.021, UX21a = 0.027, UX22a = 0.047, UX23a = 0.022, UX31a = 0.021, UX32a = 0.022, UX33a = 0.061) annotation(Placement(visible = true, transformation(origin = {-52, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      DFIG_Modelica.Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile3(UB11a = 0.15 / 2, UB12a = -0.03 / 2, UB13a = -0.01 / 2, UB21a = -0.03 / 2, UB22a = 0.25 / 2, UB23a = -0.02 / 2, UB31a = -0.01 / 2, UB32a = -0.02 / 2, UB33a = 0.14 / 2, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.0033, UR12a = 0.0008, UR13a = 0.0006, UR21a = 0.0008, UR22a = 0.0022, UR23a = 0.0007, UR31a = 0.0006, UR32a = 0.0007, UR33a = 0.0031, UX11a = 0.028, UX12a = 0.0135, UX13a = 0.0105, UX21a = 0.0135, UX22a = 0.0235, UX23a = 0.011, UX31a = 0.0105, UX32a = 0.011, UX33a = 0.0305) annotation(Placement(visible = true, transformation(origin = {18, -14}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
      Basic.ThreePhaPQLoad.Y0Load y0Load1(P1 = 1.9652, P2 = 1.9652, P3 = 1.9652, Q1 = 0.7651, Q2 = 0.7651, Q3 = 0.7651) annotation(Placement(visible = true, transformation(origin = {-80, 30}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhaPQLoad.Y0Load y0Load2(P1 = 0.6, P2 = 0.6, P3 = 0.6, Q1 = 0.3, Q2 = 0.3, Q3 = 0.3) annotation(Placement(visible = true, transformation(origin = {50, 22}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile4(UB11a = 0.15 / 2, UB12a = -0.03 / 2, UB13a = -0.01 / 2, UB21a = -0.03 / 2, UB22a = 0.25 / 2, UB23a = -0.02 / 2, UB31a = -0.01 / 2, UB32a = -0.02 / 2, UB33a = 0.14 / 2, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.0033, UR12a = 0.0008, UR13a = 0.0006, UR21a = 0.0008, UR22a = 0.0022, UR23a = 0.0007, UR31a = 0.0006, UR32a = 0.0007, UR33a = 0.0031, UX11a = 0.028, UX12a = 0.0135, UX13a = 0.0105, UX21a = 0.0135, UX22a = 0.0235, UX23a = 0.011, UX31a = 0.0105, UX32a = 0.011, UX33a = 0.0305) annotation(Placement(visible = true, transformation(origin = {-14, -28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Basic.ThreePhaPQLoad.Y0Load y0Load3(P1 = 0.6001, P2 = 0.6301, P3 = 0.5758, Q1 = 0.3, Q2 = 0.27, Q3 = 0.3333) annotation(Placement(visible = true, transformation(origin = {-80, -24}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
      Basic.ThreePhaPQLoad.Y0Load y0Load4(P1 = 0.6001, P2 = 0.6301, P3 = 0.5758, Q1 = 0.3, Q2 = 0.27, Q3 = 0.3333) annotation(Placement(visible = true, transformation(origin = {50, -26}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhaseTransformer.GrYGrY grYGrY1(N1 = 1, N2 = 1, Rp = 0.002, Sb = 10, Vb = 0.1, Xp = 0.02) annotation(Placement(visible = true, transformation(origin = {14, 34}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
 DFIG_Modelica.Basic.DFIG.DFIG_B13 dFIG_B131 annotation(Placement(visible = true, transformation(origin = {12, 76}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
equation
  connect(dFIG_B131.pinA, grYGrY1.pin) annotation(Line(points = {{3, 69}, {3, 54}, {8, 54}, {8, 44}}, color = {0, 0, 255}));
  connect(dFIG_B131.pinB, grYGrY1.pin1) annotation(Line(points = {{12, 69}, {12, 63.5}, {14, 63.5}, {14, 44}}, color = {0, 0, 255}));
  connect(dFIG_B131.pinC, grYGrY1.pin2) annotation(Line(points = {{22, 69}, {22, 62.5}, {20, 62.5}, {20, 44}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, y0Load2.pin3) annotation(Line(points = {{20, 24}, {20, 24}, {20, 26}, {40, 26}, {40, 26}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, y0Load2.pin2) annotation(Line(points = {{14, 24}, {16, 24}, {16, 22}, {40, 22}, {40, 22}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, y0Load2.pin1) annotation(Line(points = {{8, 24}, {10, 24}, {10, 18}, {40, 18}, {40, 18}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, threePhase_pi_LinePerMile3.pin2) annotation(Line(points = {{20, 24}, {22, 24}, {22, -4}, {20, -4}, {20, -6}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, threePhase_pi_LinePerMile3.pin1) annotation(Line(points = {{14, 24}, {12, 24}, {12, -4}, {16, -4}, {16, -6}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, threePhase_pi_LinePerMile1.pin_n2) annotation(Line(points = {{20, 24}, {20, 24}, {20, 16}, {-8, 16}, {-8, 16}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, threePhase_pi_LinePerMile1.pin_n1) annotation(Line(points = {{14, 24}, {14, 24}, {14, 20}, {-8, 20}, {-8, 20}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, threePhase_pi_LinePerMile3.pin) annotation(Line(points = {{8, 24}, {8, 24}, {8, -6}, {12, -6}, {12, -6}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, threePhase_pi_LinePerMile1.pin_n) annotation(Line(points = {{8, 24}, {-8, 24}, {-8, 24}, {-8, 24}}, color = {0, 0, 255}));
  connect(y0ThreePhaVSource1.pin3, dGrY1.pin2) annotation(Line(points = {{-54, 64}, {-54, 58.5}, {-56, 58.5}, {-56, 51}}, color = {0, 0, 255}));
  connect(y0ThreePhaVSource1.pin2, dGrY1.pin1) annotation(Line(points = {{-48, 64}, {-48, 58.5}, {-50, 58.5}, {-50, 51}}, color = {0, 0, 255}));
  connect(y0ThreePhaVSource1.pin1, dGrY1.pin) annotation(Line(points = {{-40, 64}, {-44, 64}, {-44, 51}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, threePhase_pi_LinePerMile1.pin) annotation(Line(points = {{-44, 32}, {-33, 32}, {-33, 24}, {-24, 24}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, threePhase_pi_LinePerMile1.pin1) annotation(Line(points = {{-50, 33}, {-46, 33}, {-46, 20}, {-24, 20}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, threePhase_pi_LinePerMile1.pin2) annotation(Line(points = {{-56, 33}, {-52, 33}, {-52, 16}, {-24, 16}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, y0Load1.pin3) annotation(Line(points = {{-56, 33}, {-56, 34}, {-70, 34}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, y0Load1.pin2) annotation(Line(points = {{-50, 33}, {-50, 28}, {-70, 28}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, y0Load1.pin1) annotation(Line(points = {{-44, 32}, {-44, 24}, {-70, 24}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, threePhase_pi_LinePerMile2.pin2) annotation(Line(points = {{-56, 33}, {-56, 15}, {-54, 15}, {-54, -4}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, threePhase_pi_LinePerMile2.pin1) annotation(Line(points = {{-50, 33}, {-50, -4}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, threePhase_pi_LinePerMile2.pin) annotation(Line(points = {{-44, 32}, {-44, 14}, {-46, 14}, {-46, -4}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n, y0Load4.pin1) annotation(Line(points = {{12, -22}, {14, -22}, {14, -32}, {40, -32}, {40, -32}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n1, y0Load4.pin2) annotation(Line(points = {{16, -22}, {18, -22}, {18, -28}, {40, -28}, {40, -28}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n2, y0Load4.pin3) annotation(Line(points = {{20, -22}, {40, -22}, {40, -22}, {40, -22}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n, y0Load3.pin1) annotation(Line(points = {{-46, -20}, {-48, -20}, {-48, -32}, {-70, -32}, {-70, -30}, {-70, -30}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n1, y0Load3.pin2) annotation(Line(points = {{-50, -20}, {-52, -20}, {-52, -26}, {-70, -26}, {-70, -26}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n2, y0Load3.pin3) annotation(Line(points = {{-54, -20}, {-70, -20}, {-70, -20}, {-70, -20}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n2, threePhase_pi_LinePerMile4.pin_n2) annotation(Line(points = {{20, -22}, {20, -22}, {20, -30}, {-6, -30}, {-6, -30}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n1, threePhase_pi_LinePerMile4.pin_n1) annotation(Line(points = {{16, -22}, {16, -22}, {16, -26}, {-6, -26}, {-6, -26}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n, threePhase_pi_LinePerMile4.pin_n) annotation(Line(points = {{13, -22.5}, {-6, -22.5}, {-6, -22}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n2, threePhase_pi_LinePerMile4.pin2) annotation(Line(points = {{-54, -20}, {-54, -20}, {-54, -30}, {-22, -30}, {-22, -30}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n1, threePhase_pi_LinePerMile4.pin1) annotation(Line(points = {{-50, -20}, {-50, -20}, {-50, -26}, {-22, -26}, {-22, -26}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n, threePhase_pi_LinePerMile4.pin) annotation(Line(points = {{-46, -20}, {-24, -20}, {-24, -22}, {-22, -22}}, color = {0, 0, 255}));
  annotation(Diagram(graphics = {Text(origin = {-64, 43}, extent = {{-6, 5}, {6, -5}}, textString = "2", fontSize = 30), Text(origin = {35, 58}, extent = {{-5, 8}, {5, -8}}, textString = "6", fontSize = 30), Text(origin = {35, 38}, extent = {{-5, 8}, {5, -8}}, textString = "5", fontSize = 30), Text(origin = {-66, 65}, extent = {{-6, 5}, {6, -5}}, textString = "1", fontSize = 30), Text(origin = {-61, -46}, extent = {{-5, 8}, {5, -8}}, textString = "3", fontSize = 30), Text(origin = {25, -48}, extent = {{-5, 8}, {5, -8}}, textString = "4", fontSize = 30)}, coordinateSystem(initialScale = 0.1)));    end DFIG_B13;