within DFIG_Modelica.Basic;

model VoltageSource "Voltage source"
  extends Interfaces.OnePhaseBranch;
  parameter SI.Voltage Vmag = 1;
  parameter SI.Angle Vangle = 0;
equation
  vRe = Vmag * cos(Vangle);
  vIm = Vmag * sin(Vangle);
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {1, 1}), graphics = {Ellipse(extent = {{-50, 50}, {50, -50}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Text(extent = {{-150, 80}, {150, 120}}, textString = ""), Line(points = {{-100, 0}, {100, 0}}, color = {0, 0, 0}), Line(points = {{-60, 0}, {-51.6, 34.2}, {-46.1, 53.1}, {-41.3, 66.4}, {-37.1, 74.6}, {-32.9, 79.1}, {-28.64, 79.8}, {-24.42, 76.6}, {-20.201, 69.7}, {-15.98, 59.4}, {-11.16, 44.1}, {-5.1, 21.2}, {7.5, -30.8}, {13, -50.2}, {17.8, -64.2}, {22, -73.1}, {26.2, -78.4}, {30.5, -80}, {34.7, -77.6}, {38.9, -71.5}, {43.1, -61.9}, {47.9, -47.2}, {54, -24.8}, {60, 0}}, color = {0, 0, 0}, thickness = 0.5), Text(extent = {{-100, -109}, {100, -69}}, lineColor = {0, 0, 255}, textString = "%name")}), Window(x = 0.31, y = 0.09, width = 0.6, height = 0.6), Diagram(coordinateSystem(preserveAspectRatio = false, grid = {1, 1}, initialScale = 0.1), graphics = {Ellipse(fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-50, 50}, {50, -50}}, endAngle = 360), Line(points = {{-100, 0}, {100, 0}}), Line(points = {{-60, 0}, {-51.6, 34.2}, {-46.1, 53.1}, {-41.3, 66.4}, {-37.1, 74.6}, {-32.9, 79.1}, {-28.64, 79.8}, {-24.42, 76.6}, {-20.201, 69.7}, {-15.98, 59.4}, {-11.16, 44.1}, {-5.1, 21.2}, {7.5, -30.8}, {13, -50.2}, {17.8, -64.2}, {22, -73.1}, {26.2, -78.4}, {30.5, -80}, {34.7, -77.6}, {38.9, -71.5}, {43.1, -61.9}, {47.9, -47.2}, {54, -24.8}, {60, 0}}, thickness = 0.5)}));
end VoltageSource;