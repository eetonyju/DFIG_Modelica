within DFIG_Modelica.Basic;

model OnePhaPQLoad
      extends Interfaces.OnePhaseBranch;
      parameter SI.ActivePower P = 0.1 "Active Power";
      parameter SI.ReactivePower Q = 0.1 "Reactive Power";
    equation
      if time == 0 then
        iRe = 0.01;
        iIm = 0.01;
      else
        vRe * iRe + vIm * iIm = P;
        (-vRe * iIm) + vIm * iRe = Q;
      end if;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false, initialScale = 0.1), graphics = {Rectangle(origin = {2, 0}, lineColor = {0, 0, 255}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, extent = {{-70, 30}, {70, -30}}), Line(points = {{-100, 0}, {-70, 0}}), Line(origin = {2, 0}, points = {{70, 0}, {100, 0}}), Text(extent = {{-144, -60}, {144, -100}}, textString = "PQ", fontName = "DejaVu Sans Mono"), Text(origin = {0, -8}, lineColor = {0, 0, 255}, extent = {{-144, 50}, {144, 110}}, textString = "%name", fontName = "DejaVu Sans Mono"), Text(origin = {-8, 0}, extent = {{0, 2}, {0, -2}}, textString = "PQLoad", fontSize = 100, fontName = "DejaVu Sans Mono"), Text(origin = {-6, 0}, extent = {{-26, 2}, {26, -2}}, textString = "PQLoad", fontSize = 60, fontName = "DejaVu Sans Mono")}), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}, grid = {2, 2}), graphics = {Rectangle(extent = {{-70, 30}, {70, -30}}), Line(points = {{-100, 0}, {-70, 0}}), Line(points = {{70, 0}, {100, 0}})}), Window(x = 0.2, y = 0.06, width = 0.62, height = 0.69));
    end OnePhaPQLoad;