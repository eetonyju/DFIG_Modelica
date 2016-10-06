within DFIG_Modelica.Interfaces;
    connector Node "Active Distribution Network Node"
      SI.Voltage vRe "Real part of voltage phasor";
      SI.Voltage vIm "Imaginary part of voltage phasor";
      flow SI.Current iRe "Real part of current phasor";
      flow SI.Current iIm "Imaginary part of current phasor";
      annotation(Icon(graphics = {Rectangle(origin = {-1, 1}, lineColor = {0, 0, 255}, fillColor = {0, 0, 127}, extent = {{-33, 41}, {33, -41}})}));
    end Node;