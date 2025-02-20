clc; clear all; close all;
%Eleccion de inductores acoplados.
%Se busca infinita permeabilidad para acercarnos a un nucleo ideal, pero esto imposible
%por lo que se elige uno de ferrite, los de polvo de hierro tienen baja
%permeabilidad. parece contradictorio pedir esto por que en un inductor
%saturaria, mas con un transformador se tiene que el devano secundario induce un campo
%el cual idealmente permitiria trandferir energia infinitamente sin
%saturar.
%Un transformador bien diseñado tendrá inductancias de fuga casi nulas y una inductancia de magnetización extremadamente grande
%Un núcleo tipo E también permite una mejor disipación de calor para los
%devanados.

%Pot de 100 to 200 ETD34;    ETD39; ETD44; EC41;
%                            EC52; RM14; P36/22; E30; T58;
%                            U25; U30; E42; EFD30

%3F3 -High frequency material (up to 700 kHz).
f=100e3;
%Pv <= kW/cm^3 a 100mT, 100°C y 100Khz
%se impone el valor aceptado en las perdidas del nucleo PV=10^2 kW/m^3
%para esa frecuencia y Pv se obtiene una (densidad de flujo pico) B^ 120mT 
    %Bpk= L*Ipk/n*Ae
%el grafico Pv vs B^ nos da el DeltaB/2.
%de Delta_B= L*Delta_I/n*Ae
L1= 65e-6;
L2= 70e-6;
N=sqrt(L2/L1);       %N2/N1
%IinRMS= sqrt(D*(I1max*I1min + (1/3)*(Ilmax - Ilmin)^2))
%I0RMS= sqrt( N^2*((Ilmax - Ilmin)*(1-D)/3  + Ilmax*Ilmin*(1-D) ))

Dsim= 0.377;
Dmax= 0.5;
I1pk= 14.87;
I1min= 13.8;
I1avg= 9.20;
I1rms= 11.49;
I1rms= sqrt(Dsim*(I1pk*I1min + (1/3)*(I1pk - I1min)^2))

I2pk= 14.3;
I2min= 13.3;
I2avg= 4.945
I2rms= 8.26;
%I2rms= N*sqrt( (1-Dmax)*( (I1pk - I1min)/3  + I1pk*I1min ) )

%Ap=Aw*Ae            %Area de ventana x Area efectiva
Bpk=250e-3;          %[T] del grafico Pv vs B^=120mT da un Pv=100 Bpk<300mT.
DeltaB= 2*Bpk;       %De la tabla
L= L1;               %25e-6 [H]
J= 4e6;            %[A/m^2]  J<450A/cm^2
Ipk= I1pk;           %67[A]
Irms= I1rms;         %46.8[A]
DeltaI= I1pk-I1min;  %48[A]
K= 0.3;              %0.3 - 0.7 se estima para inductor, 0.2 a 0.3 para un flyback.
%
Ap1= L*Ipk*Irms/(Bpk*J*K);       %[m^4]
Ap2= L*DeltaI*Irms/(DeltaB*J*K); %[m^4]

if Ap1>Ap2
    Ap=Ap1;
else
    Ap=Ap2;
end
    
%debo de buscar el las hojas de datos un nucleo con Ap mayor al obtenido
Ap_mm4= Ap*1e12  %37019 mm4
%%ETD54/28/19->Ap= 88500.

%Con estos valores se elige el E42/21/20. de los recomendados pot 100 a 200, Ae*Aw= 40300 mm4
                                                                            %E65/32/27 Ap=Ae*Aw= 213000
Ap_dataSheet= 40300e-12         %[m^4]
Ae_dataSheet= 233e-6            %m2
Amin= 233e-6                    %m2
Ve= 22700e-6                    %m^3
%pag 276:  E42/21/20
%https://campus.fi.uba.ar/pluginfile.php/473594/mod_resource/content/2/Catalogo%20Ferroxcube%20FXC_HB2013.pdf
%Pag 299. E65/32/27
%%
%la energia será:
I2L= Ipk^2*L;          %[A^2.H]=[J]
I2L_e2=I2L*1e2         %[J]
%como no esta el grafico para el E42/21/20 uso el del E42/21/15
%PREGUNTAR!!!.
%gap= 1.5mm          %-> TotalAirGap ? 1540[um]
%y asi se obtiene el Al                  
Al= 250e-9           %[H]±5%(1) E42/21/20-3F3-E250
%(1)Measured in combination with an equal gapped core half.

N1= sqrt(L1/Al)
%L2= N^2*L1 --> N=sqrt(L2/L1)
N=sqrt(L2/L1); %N2/N1
N2= N*N1

%Redondeo las vueltas!
N2=16;
N1=17;
%%
%------------------Comprobando resultados !
Bmax2= L1*I1pk/(Ae_dataSheet* N1); %[H*A/m^2]= [(V.s/A)A/m^2]=[V.s/m^2]= [Testa].
Bpk2=Bmax2/2
Bpk2_mili=Bpk2*1000    %[mT]un 9.5% mas chico que Bpk.
%
%
Pv= 10^2           %[Kw/m^3] aproximadamente a 100kHz
%entonces las perdidas por histeresis del nucleo son:
Pnucleo= Pv*Ve                  %[Kw]
Ad= Irms/J;                     %[m^2]Area de conductor.(Primario)

n_espiras= 14;                  %espiras en paralelo del primario.

Diametro= sqrt(4*Ad/pi);                    %diametro de conductor.
Diametro2= sqrt(4*(Ad/n_espiras)/pi)        %diametro de n_espiras en paralelo.

Diametro_mili=Diametro*1000     %[mm]
Diametro2_mili=Diametro2*1000   %[mm]

%El diametro debe ser menor a D_skin el diametro de efecto pelicular.
D_skin=2* 72/sqrt(f)            %[mm]

%%
Awcheck= n_espiras*Ad/K;                    % Adi= pi*Diametro^2/4
Aw_dataSheet= Ap_dataSheet/Ae_dataSheet;    %[m4]/[m2]
%Tegno que pedir que Awcheck < Aw_dataSheet 
Aw_dataSheet_mm4= Aw_dataSheet*1e6  %[mm4]
Awcheck_mm4= Awcheck*1e6            %[mm4]
%Se cumple.                                                
%AWG31: D=0.2268mm;  Area=0.0404mm2; Resist en cobre= 426.837 [Ohm/km]
%%
%-----Calculo del devanado secundario
Ad_sec=I2rms/J                      %[m^2]Area de conductor.
n_sec_espiras= 13;                   %casualmente con 13 espiras en paralelo
Diametro_sec= sqrt(4*Ad_sec/pi);                    %diametro de conductor.
Diametro2_sec= sqrt(4*(Ad_sec/n_sec_espiras)/pi)        %diametro de n_espiras en paralelo.

Diametro_sec_mili=Diametro_sec*1000     %[mm]
Diametro2_sec_mili=Diametro2_sec*1000   %[mm]

Aw= n_sec_espiras*Ad/K;                    % Adi= pi*Diametro^2/4
%Tegno que pedir que Awcheck < Aw_dataSheet 
Aw_dataSheet_mm4= Aw_dataSheet*1e6  %[mm4]
Awcheck_mm4= Aw*1e6            %[mm4]
%se cumple!!!
%%
% Perdidas en los conductores.
%Factor de relación corriente alterna-corriente continua
K=1 
%Resistividad del cobre = 2,3.10^6 ?.cm a 100ºC
rho_CU= 2.3e-5;     %Ohm*mm
%Longitud media del alambre en cada espira para el tipo de núcleo utilizado
l_media= 100;                    %mm (AVERAGE LENGTH OF TURN (mm))
%espiras en paralelo(CREO)
Nespiras= 14;                    %13->pri; 14->sec
%Área de la sección del alambre seleccionado
A_alambre= Ad*1e6                %mm^2   Ad->pri; Ad_sec ->sec.
%La resistencia de cada bobinado se calcula mediante la siguiente ecuación:
Rac= K*rho_CU*l_media*Nespiras/A_alambre        %[Ohm.mm.mm/mm^2]=[Ohm]

%% Del calculo anterior se obtiene:
Rpri= 14.63*1e-3;                   %[Ohm]
Rsec= 14.48*1e-3;                   %[Ohm]
%Potencia disipada por el cobre:
PCU= I1rms^2*Rpri + Irms^2*Rsec;    %[W]
%Potencia disicapada por el trafo:
Ptrafo= PCU + Pnucleo;              %[W]

%PD= uso el AWG30 que usan aca :
%http://materias.fi.uba.ar/6610/Apuntes/FUENTE%20DE%20ALIMENTACION%20FLYBACK%20-%20ejemplo%20de%20disenio.pdf
%chequear!!!!.


