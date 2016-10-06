within DFIG_Modelica.Example;
model DFIG1
 DFIG_Modelica.Basic.ThreePhaseVoltageSource.Y0ThreePhaVSource y0ThreePhaVSource1(Vangle1 = 0, Vangle2 = -2 * Modelica.Constants.pi / 3, Vangle3 = 2 * Modelica.Constants.pi / 3, Vmag1 = 1, Vmag2 = 1, Vmag3 = 1) annotation(Placement(visible = true, transformation(origin = {-46, 62}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
 DFIG_Modelica.Basic.ThreePhaseTransformer.DGrY dGrY1(N1 = 1, N2 = 1 / sqrt(3), Rp = 0.002, Sb = 10, Vb = 0.1, Xp = 0.02) annotation(Placement(visible = true, transformation(origin = {-46, 34}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
      Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile1(Lengtha = 1, UB11a = -0.1484, UB12a = 0.031, UB13a = 0.025, UB21a = 0.031, UB22a = -0.1495, UB23a = 0.03, UB31a = 0.025, UB32a = 0.03, UB33a = -0.115, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.008, UR12a = 0.004, UR13a = 0.004, UR21a = 0.004, UR22a = 0.007, UR23a = 0.004, UR31a = 0.004, UR32a = 0.004, UR33a = 0.008, UX11a = 0.055, UX12a = 0.016, UX13a = 0.011, UX21a = 0.016, UX22a = 0.054, UX23a = 0.016, UX31a = 0.011, UX32a = 0.016, UX33a = 0.055) annotation(Placement(visible = true, transformation(origin = {-16, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile3(UB11a = -0.15, UB12a = 0.03, UB13a = 0.01, UB21a = 0.03, UB22a = -0.25, UB23a = 0.02, UB31a = 0.01, UB32a = 0.02, UB33a = -0.14, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.0033, UR12a = 0.0008, UR13a = 0.0006, UR21a = 0.0008, UR22a = 0.0022, UR23a = 0.0007, UR31a = 0.0006, UR32a = 0.0007, UR33a = 0.0031, UX11a = 0.028, UX12a = 0.0135, UX13a = 0.0105, UX21a = 0.0135, UX22a = 0.0235, UX23a = 0.011, UX31a = 0.0105, UX32a = 0.011, UX33a = 0.0305) annotation(Placement(visible = true, transformation(origin = {16, -10}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
 DFIG_Modelica.Basic.ThreePhaPQLoad.Y0Load y0Load1(P1 = 1.9652, P2 = 1.9652, P3 = 1.9652, Q1 = 0.7651, Q2 = 0.7651, Q3 = 0.7651) annotation(Placement(visible = true, transformation(origin = {-76, 22}, extent = {{10, 10}, {-10, -10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhaPQLoad.Y0Load y0Load2(P1 = 0.6, P2 = 0.6, P3 = 0.6, Q1 = 0.3, Q2 = 0.3, Q3 = 0.3) annotation(Placement(visible = true, transformation(origin = {48, 20}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
      DFIG_Modelica.Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile4(UB11a = -0.15, UB12a = 0.03, UB13a = 0.01, UB21a = 0.03, UB22a = -0.25, UB23a = 0.02, UB31a = 0.01, UB32a = 0.02, UB33a = -0.14, UG11a = 0, UG12a = 0, UG13a = 0, UG21a = 0, UG22a = 0, UG23a = 0, UG31a = 0, UG32a = 0, UG33a = 0, UR11a = 0.0033, UR12a = 0.0008, UR13a = 0.0006, UR21a = 0.0008, UR22a = 0.0022, UR23a = 0.0007, UR31a = 0.0006, UR32a = 0.0007, UR33a = 0.0031, UX11a = 0.028, UX12a = 0.0135, UX13a = 0.0105, UX21a = 0.0135, UX22a = 0.0235, UX23a = 0.011, UX31a = 0.0105, UX32a = 0.011, UX33a = 0.0305) annotation(Placement(visible = true, transformation(origin = {-16, -26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 DFIG_Modelica.Basic.ThreePhaPQLoad.Y0Load y0Load3(P1 = 0.6, P2 = 0.63, P3 = 0.5758, Q1 = 0.3, Q2 = 0.27, Q3 = 0.3333) annotation(Placement(visible = true, transformation(origin = {-46, -52}, extent = {{12, 12}, {-12, -12}}, rotation = 90)));
 DFIG_Modelica.Basic.ThreePhaPQLoad.Y0Load y0Load4(P1 = 0.6, P2 = 0.63, P3 = 0.5758, Q1 = 0.3, Q2 = 0.27, Q3 = 0.3333) annotation(Placement(visible = true, transformation(origin = {16, -52}, extent = {{-12, 12}, {12, -12}}, rotation = -90)));
 DFIG_Modelica.Basic.ThreePhaseTransformer.GrYGrY grYGrY1(N1 = 1, N2 = 1, Rp = 0.002, Sb = 10, Vb = 0.1, Xp = 0.02) annotation(Placement(visible = true, transformation(origin = {16, 34}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
 DFIG_Modelica.Basic.DFIG1 dFIG11 annotation(Placement(visible = true, transformation(origin = {16, 60}, extent = {{-10, 10}, {10, -10}}, rotation = 0)));
  DFIG_Modelica.Basic.ThreePhase_pi_LinePerMile threePhase_pi_LinePerMile2 annotation(Placement(visible = true, transformation(origin = {-46, -10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(y0ThreePhaVSource1.pin2, dGrY1.pin1) annotation(Line(points = {{-46, 52}, {-46, 52}, {-46, 42}, {-46, 42}}, color = {0, 0, 255}));
  connect(y0ThreePhaVSource1.pin3, dGrY1.pin2) annotation(Line(points = {{-52, 53}, {-52, 42}}, color = {0, 0, 255}));
  connect(y0ThreePhaVSource1.pin1, dGrY1.pin) annotation(Line(points = {{-38, 53}, {-38, 42}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n2, y0Load3.pin3) annotation(Line(points = {{-52, -20}, {-52, -41}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n1, y0Load3.pin2) annotation(Line(points = {{-46, -20}, {-46, -41}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n, y0Load3.pin1) annotation(Line(points = {{-40, -20}, {-40, -41}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, y0Load1.pin3) annotation(Line(points = {{-52, 26}, {-67, 26}, {-67, 27}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, y0Load1.pin2) annotation(Line(points = {{-46, 26}, {-48, 26}, {-48, 22}, {-67, 22}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, y0Load1.pin1) annotation(Line(points = {{-38, 26}, {-38, 17}, {-67, 17}}, color = {0, 0, 255}));
  connect(dFIG11.pinB, grYGrY1.pin1) annotation(Line(points = {{16, 53}, {16, 52.7}, {15.8, 52.7}, {15.8, 42.2}}, color = {0, 0, 255}));
  connect(dFIG11.pinC, grYGrY1.pin2) annotation(Line(points = {{23, 53}, {23, 41.2}, {21.4, 41.2}}, color = {0, 0, 255}));
  connect(dFIG11.pinA, grYGrY1.pin) annotation(Line(points = {{8, 53}, {8, 42}, {10, 42}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, y0Load2.pin1) annotation(Line(points = {{10, 26}, {8, 26}, {8, 16}, {40, 16}, {40, 16}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, y0Load2.pin2) annotation(Line(points = {{16, 26}, {18, 26}, {18, 20}, {40, 20}, {40, 20}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, threePhase_pi_LinePerMile1.pin) annotation(Line(points = {{-38, 26}, {-26, 26}, {-26, 24}, {-26, 24}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n, threePhase_pi_LinePerMile2.pin) annotation(Line(points = {{-39, 26}, {-40, 26}, {-40, 0}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, threePhase_pi_LinePerMile2.pin1) annotation(Line(points = {{-46, 26}, {-46, 0}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, threePhase_pi_LinePerMile2.pin2) annotation(Line(points = {{-52, 26}, {-52, 0}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n2, threePhase_pi_LinePerMile1.pin2) annotation(Line(points = {{-52, 26}, {-52, 14}, {-26, 14}}, color = {0, 0, 255}));
  connect(dGrY1.pin_n1, threePhase_pi_LinePerMile1.pin1) annotation(Line(points = {{-46, 26}, {-46, 20}, {-26, 20}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, y0Load2.pin3) annotation(Line(points = {{22, 26}, {40, 26}, {40, 24}, {40, 24}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, threePhase_pi_LinePerMile3.pin) annotation(Line(points = {{10, 26}, {10, 26}, {10, 0}, {10, 0}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n, threePhase_pi_LinePerMile1.pin_n) annotation(Line(points = {{10, 26}, {-6, 26}, {-6, 24}, {-6, 24}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n2, y0Load4.pin3) annotation(Line(points = {{22, -20}, {22, -41}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n, y0Load4.pin1) annotation(Line(points = {{10, -20}, {10, -41}}, color = {0, 0, 255}));
  connect(y0Load4.pin2, threePhase_pi_LinePerMile3.pin_n1) annotation(Line(points = {{16, -41}, {16, -20}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n2, threePhase_pi_LinePerMile4.pin_n2) annotation(Line(points = {{22, -20}, {22, -20}, {22, -32}, {-6, -32}, {-6, -32}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile3.pin_n1, threePhase_pi_LinePerMile4.pin_n1) annotation(Line(points = {{16, -20}, {16, -20}, {16, -26}, {-6, -26}, {-6, -26}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile4.pin_n, threePhase_pi_LinePerMile3.pin_n) annotation(Line(points = {{-6, -20}, {8, -20}, {8, -20}, {10, -20}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n2, threePhase_pi_LinePerMile4.pin2) annotation(Line(points = {{-52, -20}, {-52, -20}, {-52, -32}, {-26, -32}, {-26, -32}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n1, threePhase_pi_LinePerMile4.pin1) annotation(Line(points = {{-46, -20}, {-46, -20}, {-46, -26}, {-26, -26}, {-26, -26}}, color = {0, 0, 255}));
  connect(threePhase_pi_LinePerMile2.pin_n, threePhase_pi_LinePerMile4.pin) annotation(Line(points = {{-40, -20}, {-26, -20}, {-26, -20}, {-26, -20}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, threePhase_pi_LinePerMile3.pin2) annotation(Line(points = {{22, 26}, {22, 26}, {22, 0}, {22, 0}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, threePhase_pi_LinePerMile3.pin1) annotation(Line(points = {{16, 26}, {16, 26}, {16, 0}, {16, 0}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n2, threePhase_pi_LinePerMile1.pin_n2) annotation(Line(points = {{22, 26}, {22, 26}, {22, 12}, {-6, 12}, {-6, 12}}, color = {0, 0, 255}));
  connect(grYGrY1.pin_n1, threePhase_pi_LinePerMile1.pin_n1) annotation(Line(points = {{16, 26}, {16, 26}, {16, 18}, {-6, 18}, {-6, 18}}, color = {0, 0, 255}));
  annotation(Diagram(graphics = {Text(origin = {-58, 11}, extent = {{-6, 5}, {6, -5}}, textString = "2", fontSize = 20), Text(origin = {31, 50}, extent = {{-5, 8}, {5, -8}}, textString = "6", fontSize = 20), Text(origin = {31, 10}, extent = {{-5, 8}, {5, -8}}, textString = "5", fontSize = 20), Text(origin = {-60, 49}, extent = {{-6, 5}, {6, -5}}, textString = "1", fontSize = 20), Text(origin = {-59, -26}, extent = {{-5, 8}, {5, -8}}, textString = "3", fontSize = 20), Text(origin = {29, -26}, extent = {{-5, 8}, {5, -8}}, textString = "4", fontSize = 20), Text(origin = {-87, 22}, extent = {{-5, 10}, {5, -10}}, textString = "S1", fontSize = 20), Text(origin = {-45, -64}, extent = {{-5, 10}, {5, -10}}, textString = "S2", fontSize = 20), Text(origin = {17, -64}, extent = {{-5, 10}, {5, -10}}, textString = "S3", fontSize = 20), Text(origin = {61, 20}, extent = {{-5, 10}, {5, -10}}, textString = "S4", fontSize = 20), Text(origin = {-30, 63}, extent = {{-6, 7}, {6, -7}}, textString = "G1", fontSize = 20), Text(origin = {0, 63}, extent = {{-6, 7}, {6, -7}}, textString = "G2", fontSize = 20), Text(origin = {-14, 33}, extent = {{-6, 7}, {6, -7}}, textString = "L1", fontSize = 20), Text(origin = {-56, -9}, extent = {{-6, 7}, {6, -7}}, textString = "L2", fontSize = 20), Text(origin = {30, -9}, extent = {{-6, 7}, {6, -7}}, textString = "L3", fontSize = 20), Text(origin = {-16, -11}, extent = {{-6, 7}, {6, -7}}, textString = "L4", fontSize = 20)}, coordinateSystem(initialScale = 0.1)));    end DFIG1;