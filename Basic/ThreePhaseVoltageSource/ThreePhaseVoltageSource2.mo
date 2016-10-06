 within DFIG_Modelica.Basic.ThreePhaseVoltageSource;

 model ThreePhaseVoltageSource2
        extends Interfaces.ThreePort;
        parameter SI.Voltage Vmag1 = 1;
        parameter SI.Angle Vangle1 = 0;
        parameter SI.Voltage Vmag2 = 1;
        parameter SI.Angle Vangle2 = 0;
        parameter SI.Voltage Vmag3 = 1;
        parameter SI.Angle Vangle3 = 0;
        Real i1Re(start = 0);
        Real i2Re(start = 0);
        Real i3Re(start = 0);
        Real i1Im(start = 0);
        Real i2Im(start = 0);
        Real i3Im(start = 0);
      equation
        pA.vRe - 0 = Vmag1 * cos(Vangle1);
        pA.vIm - 0 = Vmag1 * sin(Vangle1);
        pB.vRe - 0 = Vmag2 * cos(Vangle2);
        pB.vIm - 0 = Vmag2 * sin(Vangle2);
        pC.vRe - 0 = Vmag3 * cos(Vangle3);
        pC.vIm - 0 = Vmag3 * sin(Vangle3);
        i1Re = pA.iRe;
        i2Re = pB.iRe;
        i3Re = pC.iRe;
        i1Im = pA.iIm;
        i2Im = pB.iIm;
        i3Im = pC.iIm;
        annotation(Icon(graphics = {Ellipse(origin = {31, 1}, extent = {{-53, 51}, {37, -35}}, endAngle = 360)}));
      end ThreePhaseVoltageSource2;