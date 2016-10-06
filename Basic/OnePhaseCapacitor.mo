 
 within DFIG_Modelica.Basic;
 model OnePhaseCapacitor
      extends Interfaces.OnePhaseBranch;
      parameter SI.ReactivePower Q = 0.1 "Reactive Power";
      parameter SI.Voltage Vn = 10e3 "normal voltage";
      Real B;
    equation
      B = Q / (Vn ^ 2 * 1000);
      iRe = -B * vIm;
      iIm = B * vRe;
      annotation(Icon(graphics = {Rectangle(origin = {-4, 2}, extent = {{-64, 12}, {64, -12}})}));
    end OnePhaseCapacitor;