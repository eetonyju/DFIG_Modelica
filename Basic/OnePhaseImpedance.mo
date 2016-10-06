 within DFIG_Modelica.Basic;

 model OnePhaseImpedance
      extends Interfaces.OnePhaseBranch;
      parameter SI.Resistance R = 1;
      parameter SI.Reactance X = 1;
    equation
      vRe = R * iRe - X * iIm;
      vIm = R * iIm + X * iRe;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Rectangle(extent = {{-70, 30}, {70, -30}}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid), Line(points = {{-100, 0}, {-70, 0}}), Line(points = {{70, 0}, {100, 0}}), Text(extent = {{-144, -60}, {144, -100}}, lineColor = {0, 0, 0}, textString = "Z"), Text(extent = {{-144, 50}, {144, 110}}, lineColor = {0, 0, 255}, textString = "%name")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Rectangle(extent = {{-70, 30}, {70, -30}}), Line(points = {{-100, 0}, {-70, 0}}), Line(points = {{70, 0}, {100, 0}})}), Window(x = 0.2, y = 0.06, width = 0.62, height = 0.69));
    end OnePhaseImpedance;