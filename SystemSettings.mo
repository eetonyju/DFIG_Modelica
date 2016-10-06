 within DFIG_Modelica;
 model SystemSettings
    parameter SI.Frequency frequency = 60;
    parameter Real BalancedSbase = 100 "System base in MVA";
    parameter Real ThreePhaseSbase = 10 "System base in MVA";
    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {140, 100}}), graphics = {Rectangle(extent = {{-100, 100}, {140, -100}}, lineColor = {28, 108, 200}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-80, -20}, {120, -60}}, lineColor = {28, 108, 200}, horizontalAlignment = TextAlignment.Left, textString = "Frequency: %frequency Hz"), Text(extent = {{-80, 100}, {120, 60}}, lineColor = {28, 108, 200}, horizontalAlignment = TextAlignment.Center, textString = "System Settings")}), defaultComponentName = "SysData", defaultAttributes = "inner", Diagram(coordinateSystem(extent = {{-100, -100}, {140, 100}})));
  end SystemSettings;