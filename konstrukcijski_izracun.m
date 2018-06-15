%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       PODACI O GENERATORIMA                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
syms Un_G cosfi_G Sn_G Xds_G Xd_G Xi_G Rg_G tablica_g;

Un_G = [20; 10; 10];

cosfi_G = [0.85; 0.90; 0.8];

Sn_G = [150; 100; 10];

xds_G = [14; 16; 10];

Xd_G = [180; 200; 180];

xi_G = [14; 16; 10];

Rg_G = [0.002; 0.005; 0.018];

fprintf('\n[============ PODACI O GENERATORIMA ============]\n\n')
tablica_g = table(Un_G, cosfi_G, Sn_G, xds_G, Xd_G, xi_G, Rg_G, 'RowNames', {'G1' 'G2' 'G3'});
disp(tablica_g)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       PODACI O TRANSFORMATORIMA                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms Sn1_T Sn2_T Sn3_T Un1_T Un2_T Un3_T Uk12_T Uk13_T Uk23_T Ur12_T Ur13_T Ur23_T R0Rd_T X0Xd_T tablica_t;

Sn1_T = [150; 100; 350; 350; 31.5; 31.5; 1; 0.63];
Sn2_T = [0; 0; 350; 350; 0; 0; 0; 0];               %samo za tronamotne
Sn3_T = [0; 0; 50; 50; 0; 0; 0; 0];                 %samo za tronamotne

Un1_T = [110; 110; 380; 380; 110; 110; 10; 10];
Un2_T = [20; 10; 110; 110; 10; 10; 0.4; 0.4];
Un3_T = [0; 0; 30; 30; 0; 0; 0; 0];                 %samo za tronamotne

Uk12_T = [16; 12; 21; 21; 12; 12; 5; 4.4];
Uk13_T = [0; 0; 10; 10; 0; 0; 0; 0];
Uk23_T = [0; 0; 7; 7; 0; 0; 0; 0];

Uk012_T = [0; 0; 9.51; 9.51; 0; 0; 0; 0];           %samo za tronamotne
Uk013_T = [0; 0; 9.51; 9.51; 0; 0; 0; 0];           %
Uk023_T = [0; 0; 6.3; 6.3; 0; 0; 0; 0];             %

Ur12_T = [0.5; 0.5; 0.26; 0.26; 0.5; 0.5; 1.03; 0.9];
Ur13_T = [0; 0; 0.16; 0.16; 0; 0; 0; 0];                %samo za tronamotne
Ur23_T = [0; 0; 0.16; 0.16; 0; 0; 0; 0];                %

R0Rd_T = [1; 1; 0; 0; 1; 1; 1; 1];
X0Xd_T = [0.95; 1; 0; 0; 1; 1; 1; 1];

fprintf('\n[============ PODACI O TRANSFORMATORIMA ============]\n\n')
tablica_t = table(Sn1_T, Sn2_T, Sn3_T, Un1_T, Un2_T, Un3_T, Uk12_T, Uk13_T, Uk23_T, Uk012_T, Uk013_T, Uk023_T, Ur12_T, Ur13_T, Ur23_T, R0Rd_T, X0Xd_T, 'RowNames', {'T1' 'T2' 'T3' 'T4' 'T5' 'T6' 'T7' 'T8'});
disp(tablica_t)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          PODACI O VODOVIMA                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms U_v l_v Zdv_v Z0v_v tablica_v;

U_v = [110; 110; 110];
l_v = [20; 10; 15];
Zdv_v = [0.12+0.39i; 0.12+0.39i; 0.12+0.386i];
Z0v_v = [0.32+1.26i; 0.32+1.26i; 0.22+1.1i];

fprintf('\n[============ PODACI O VODOVIMA ============]\n\n')
tablica_v = table(U_v, l_v, Zdv_v, Z0v_v, 'RowNames', {'ZV1, ZV1a' 'ZV2, ZV2a' 'ZV3, ZV3a'});
disp(tablica_v)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          PODACI O KABELIMA                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms U_k l_k Zdv_k Z0v_k tablica_k;

U_k = [10; 10; 10];
l_k = [1; 7; 5.5];
Zdv_k = [0.253+0.107i; 0.253+0.095i; 0.253+0.107i];
Z0v_k = [0.9361+0.963i; 1.606+1.1875i; 0.9361+0.963i];

fprintf('\n[============ PODACI O KABELIMA ============]\n\n')
tablica_k = table(U_k, l_k, Zdv_k, Z0v_k, 'RowNames', {'K1' 'K2' 'K3'});
disp(tablica_k)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                       PODACI O AKTIVNIM MREŽAMA                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms U_am RdXd_am R0X0_am X0Xd_am Sk3 tablica_am;

U_am = [380; 110];
RdXd_am = [0.1; 0.1];
R0X0_am = [0.15; 0.2];
X0Xd_am = [3; 3.3];
Sk3 = [25011; 3048.4];

fprintf('\n[============ PODACI O AKTIVNIM MREŽAMA ============]\n\n')
tablica_am = table(RdXd_am, R0X0_am, X0Xd_am, Sk3, 'RowNames', {'A1' 'A2'});
disp(tablica_am)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                           PODACI O MOTORIMA                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms U_m P_m p cosfi_M eta_M IpIn_M R_M;

U_m = [10; 10; 10; 10];
P_m = [5; 2; 2; 0.0031];
p = [1; 2; 2; 2];
cosfi_M = [0.88; 0.89; 0.89; 0.85];
eta_M = [0.975; 0.968; 0.968; 0.959];
IpIn_M = [5; 5.2; 5.2; 4];
R_M = zeros(4,1);

fprintf('\n[============ PODACI O MOTORIMA ============]\n\n')
tablica_m = table(U_m, P_m, p, cosfi_M, eta_M, IpIn_M, R_M, 'RowNames', {'M1' 'M2' 'M3' 'M4'});
disp(tablica_m)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%            PRORAÈUN NADOMJESNIH IMPEDANCIJA ELEMENATA MREŽE            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms Uref n v;

% POÈETNI UVJETI %

Uref = 10;     % Napon sabirnice/kabela/voda na kojoj je K.S. (bazni napon)


% DEFINIRANJE VRIJEDNOSTI VARIJABLE PRIJE POKRETANJA PRORAÈUNA %
%ZA GENERATORE
syms Xds_G Rd_G Xi_G Zds_G Zi_G Z0_G;

Xds_G = 0; 
Rd_G = 0;
Xi_G = 0;
Zds_G = 0;
Zi_G = 0;
Z0_G = 0;

%ZA DVONAMOTNE TRANSFORMATORE
syms ZNS ZNP Xd_T Xi_T X0_T Rd_T Ri_T R0_T ZN_T Zd_T Zi_T Z0_T;

ZNP = 22i;    % IZ PODATAKA O UZEMLJENJU TRANSFORMATORA (PRIMAR)
ZNS = 80;     % IZ PODATAKA O UZEMLJENJU TRANSFORMATORA (SEKUNDAR)
                    % NAPRAVITI MATRICU OVISNO O BROJU RAZLIÈITIH
                    % VRIJEDNOSTI I TRANSFORMATORA

Xd_T = 0;
Xi_T = 0;
X0_T = 0;

Rd_T = 0;
Ri_T = 0;
R0_T = 0;

ZN_T = 0;
Zd_T = 0;
Zi_T = 0;
Z0_T = 0;

%ZA TRONAMOTNE TRANSFORMATORE
syms Xd12_T Xd13_T Xd23_T Rd12_T Rd13_T Rd23_T X012_T X013_T X023_T Xi12_T Xi13_T Xi23_T Xd1_T Xd2_T Xd3_T Xi1_T Xi2_T Xi3_T Rd1_T Rd2_T Rd3_T Ri1_T Ri2_T Ri3_T R01_T R02_T R03_T Zd1_T Zd2_T Zd3_T X01_T X02_T X03_T Z01_T Z02_T Z03_T;

Xd12_T = 0;
Xd13_T = 0;
Xd23_T = 0;

Rd12_T = 0;
Rd13_T = 0;
Rd23_T = 0;

X012_T = 0;
X013_T = 0;
X023_T = 0;

Xi12_T = 0;
Xi13_T = 0;
Xi23_T = 0;

Xd1_T = 0;
Xd2_T = 0;
Xd3_T = 0;
    
Xi1_T = 0;
Xi2_T = 0;
Xi3_T = 0; 
    
Rd1_T = 0;
Rd2_T = 0;
Rd3_T = 0;
    
Ri1_T = 0;
Ri2_T = 0;
Ri3_T = 0;
R01_T = 0;
R02_T = 0;
R03_T = 0;
    
Zd1_T = 0;
Zd2_T = 0;
Zd3_T = 0;
    
X01_T = 0;
X02_T = 0;
X03_T = 0;
    
Z01_T = 0;
Z02_T = 0;
Z03_T = 0;

%ZA ZRAÈNE VODOVE

syms Zd_v Zi_v Z0_v;

Zd_v = 0;
Zi_v = 0;
Z0_v = 0;

%ZA KABELE

syms Zd_k Zi_k Z0_k;

Zd_k = 0;
Zi_k = 0;
Z0_k = 0;

%ZA AKTIVNE MREŽE

syms Xd_am Xi_am X0_am Rd_am Ri_am R0_am Zd_am Zi_am Z0_am;

Xd_am = 0;
Xi_am = 0;
X0_am = 0;

Rd_am = 0;
Ri_am = 0;
R0_am = 0;

Zd_am = 0;
Zi_am = 0;
Z0_am = 0;

%ZA MOTORE

syms  Xd_M Xi_M X0_M Zd_M Zi_M Z0_M;

Xd_M = 0;
Xi_M = 0;
X0_M = 0;

Zd_M = 0;
Zi_M = 0;
Z0_M = 0;

%ZA TABLICE
syms tablica_pg tablica_pt_dn tablica_pzv tablica_pk tablica_pam tablica_pm;

% GENERATORI %

fprintf('\n[============ GENERATORI ============]\n\n')

for n = 1:3     %UNESTI BROJEVE S OZNAKA GENERATORA (G1, G2, G3)
    Xds_G(n) = (xds_G(n)/100)*(Uref^2/Sn_G(n));
    Rd_G(n) = Rg_G(n)*(Uref/Un_G(n))^2;
    Xi_G(n) = (xi_G(n)/100)*(Uref^2/Sn_G(n));
    Zds_G(n) = Rd_G(n)+Xds_G(n)*i;
    Zi_G(n) = Rd_G(n)+Xi_G(n)*i;
    Z0_G(n) = inf;
end

Xds_G = Xds_G.';
Rd_G = Rd_G.';
Xi_G = Xi_G.';
Zds_G = Zds_G.';
Zi_G = Zi_G.';
Z0_G = Z0_G.';

tablica_pg = table(Xds_G, Rd_G, Xi_G, Zds_G, Zi_G, Z0_G, 'VariableNames', {'Xds' 'Rd' 'Xi' 'Zds' 'Zi' 'Z0'}, 'RowNames', {'G1' 'G2' 'G3'});
disp(tablica_pg)

% TRANSFORMATORI (T8 VAN POGONA) %

fprintf('\n[============ TRANSFORMATORI ============]\n\n')

for n = [1 6]     %DVONAMOTNI S UZEMLJENJEM (unesti brojeve s oznake transformatora)

    Xd_T(n) = (Uk12_T(n)/100)*(Uref^2/Sn1_T(n));
    Xi_T(n) = Xd_T(n);

    if n == 1
        X0_T(n) = 0.95*Xd_T(n);
    elseif n == 6
        X0_T(n) = Xd_T(n);
    end

    Rd_T(n) = (Ur12_T(n)/100)*(Uref^2/Sn1_T(n));
    Ri_T(n) = Rd_T(n);
    R0_T(n) = Rd_T(n);

    if n == 1                                       %DODATI ||n == BROJ TRANSFORMATORA KOJI JE UZEMLJEN NA PRIMARU
        ZN_T(n) = ZNP*(Uref/Un2_T(n))^2;            %STAVLJEN JE Un2_T JER JE MANJI - NIJE MI SE DALO PISATI PETLJU
        Z0_T(n) = R0_T(n)+3*ZN_T(n)+X0_T(n)*i;
    elseif n == 6                                   %DODATI ||n == BROJ TRANSFORMATORA KOJI JE UZEMLJEN NA SEKUNDARU
        ZN_T(n) = ZNS*(Uref/Un2_T(n))^2;            %STAVLJEN JE Un2_T JER JE MANJI - NIJE MI SE DALO PISATI PETLJU
        Z0_T(n) = R0_T(n)+X0_T(n)*i;
    end

    Zd_T(n) = Rd_T(n)+(Xd_T(n)*i);
    Zi_T(n) = Zd_T(n);
end

for n = [2 5 7]     %DVONAMOTNI BEZ UZEMLJENJA (unesti brojeve s oznake transformatora)
    Xd_T(n) = (Uk12_T(n)/100)*(Uref^2/Sn1_T(n));
    Xi_T(n) = Xd_T(n);
    X0_T(n) = Xd_T(n);

    Rd_T(n) = (Ur12_T(n)/100)*(Uref^2/Sn1_T(n));
    Ri_T(n) = Rd_T(n);
    R0_T(n) = Rd_T(n);


    Zd_T(n) = Rd_T(n)+(Xd_T(n)*i);
    Zi_T(n) = Zd_T(n);
    Z0_T(n) = Zd_T(n);
    
    ZN_T(n) = 0;
end

for n = [3 4]     %TRONAMOTNI - JEDNAKI PODACI TA DIREKTNI I INVERZNI SUSTAV (RAZLIÈITA SHEMA KOD NULTOG)
    if Sn1_T(n) > Sn2_T(n)
        Xd12_T(n) = (Uk12_T(n)/100)*(Uref^2/Sn2_T(n));
        Rd12_T(n) = (Ur12_T(n)/100)*(Uref^2/Sn2_T(n));
        X012_T(n) = (Uk012_T(n)/100)*(Uref^2/Sn2_T(n));
    else
        Xd12_T(n) = (Uk12_T(n)/100)*(Uref^2/Sn1_T(n));
        Rd12_T(n) = (Ur12_T(n)/100)*(Uref^2/Sn1_T(n));
        X012_T(n) = (Uk012_T(n)/100)*(Uref^2/Sn1_T(n));
    end
    
    if Sn1_T(n) > Sn3_T(n)
        Xd13_T(n) = (Uk13_T(n)/100)*(Uref^2/Sn3_T(n));
        Rd13_T(n) = (Ur13_T(n)/100)*(Uref^2/Sn3_T(n));
        X013_T(n) = (Uk013_T(n)/100)*(Uref^2/Sn3_T(n));     % NISAM ŠKOLOVAO PETLJE DA BI IH OPTIMIZIRAO :(
    else
        Xd13_T(n) = (Uk13_T(n)/100)*(Uref^2/Sn1_T(n));
        Rd13_T(n) = (Ur13_T(n)/100)*(Uref^2/Sn1_T(n));
        X013_T(n) = (Uk013_T(n)/100)*(Uref^2/Sn1_T(n));
    end
    
    if Sn2_T(n) > Sn3_T(n)
        Xd23_T(n) = (Uk23_T(n)/100)*(Uref^2/Sn3_T(n));
        Rd23_T(n) = (Ur23_T(n)/100)*(Uref^2/Sn3_T(n));
        X023_T(n) = (Uk023_T(n)/100)*(Uref^2/Sn3_T(n));
    else
        Xd23_T(n) = (Uk23_T(n)/100)*(Uref^2/Sn2_T(n));
        Rd23_T(n) = (Ur23_T(n)/100)*(Uref^2/Sn2_T(n));
        X023_T(n) = (Uk023_T(n)/100)*(Uref^2/Sn2_T(n));
    end
    
    Xi12_T(n) = Xd12_T(n);
    Xi13_T(n) = Xd13_T(n);
    Xi23_T(n) = Xd23_T(n);
    
    Xd1_T(n) = 0.5*(Xd12_T(n)+Xd13_T(n)-Xd23_T(n));
    Xd2_T(n) = 0.5*(Xd12_T(n)+Xd23_T(n)-Xd13_T(n));
    Xd3_T(n) = 0.5*(Xd13_T(n)+Xd23_T(n)-Xd12_T(n));
    
    Xi1_T(n) = Xd1_T(n);
    Xi2_T(n) = Xd2_T(n);
    Xi3_T(n) = Xd3_T(n); 
    
    Rd1_T(n) = 0.5*(Rd12_T(n)+Rd13_T(n)-Rd23_T(n));
    Rd2_T(n) = 0.5*(Rd12_T(n)+Rd23_T(n)-Rd13_T(n));
    Rd3_T(n) = 0.5*(Rd13_T(n)+Rd23_T(n)-Rd12_T(n));
    
    Ri1_T(n) = Rd1_T(n);
    Ri2_T(n) = Rd2_T(n);
    Ri3_T(n) = Rd3_T(n);
    R01_T(n) = Rd1_T(n);
    R02_T(n) = Rd2_T(n);
    R03_T(n) = Rd3_T(n);
    
    Zd1_T(n) = Rd1_T(n)+(Xd1_T(n))*i;
    Zd2_T(n) = Rd2_T(n)+(Xd2_T(n))*i;
    Zd3_T(n) = Rd3_T(n)+(Xd3_T(n))*i;
    
    X01_T(n) = 0.5*(X012_T(n)+X013_T(n)-X023_T(n));
    X02_T(n) = 0.5*(X012_T(n)+X023_T(n)-X013_T(n));
    X03_T(n) = 0.5*(X013_T(n)+X023_T(n)-X012_T(n));
    
    Z01_T(n) = R01_T(n)+(X01_T(n))*i;
    Z02_T(n) = R02_T(n)+(X02_T(n))*i;
    Z03_T(n) = R03_T(n)+(X03_T(n))*i;
end

Xd_T = Xd_T.';
Xi_T = Xi_T.';
X0_T = X0_T.';

Xd_T(3:4,:) = []; %FOR PETLJA RADI ITERACIJU PO SVAKOM BROJU U GORNJEM PRORAÈUNU PA TREBA MAKNUTI NEPOTREBNE NULE U MATRICAMA (ZBOG STVARANJA TABLICE)
Xi_T(3:4,:) = []; %SINTAKSA M(STUPCI,REDOVI) = [] <- PRAZNO POLJE - SKRAÆUJE MATRICU ZA TA PRAZNA POLJA I RIJEŠAVA SE PROBLEM ZAPISA VRIJEDNOST I KAO 0 U ITERACIJAMA
X0_T(3:4,:) = [];

Rd_T = Rd_T.';
Ri_T = Ri_T.';
R0_T = R0_T.';

Rd_T(3:4,:) = [];
Ri_T(3:4,:) = [];
R0_T(3:4,:) = [];

ZN_T = ZN_T.';
Zd_T = Zd_T.';
Zi_T = Zi_T.';
Z0_T = Z0_T.';

ZN_T(3:4,:) = [];
Zd_T(3:4,:) = [];
Zi_T(3:4,:) = [];
Z0_T(3:4,:) = [];

Xd12_T = Xd12_T.';
Xd13_T = Xd13_T.';
Xd23_T = Xd23_T.';

Xd12_T(1:2,:) = [];
Xd13_T(1:2,:) = [];
Xd23_T(1:2,:) = [];

Rd12_T = Rd12_T.';
Rd13_T = Rd13_T.';
Rd23_T = Rd23_T.';

Rd12_T(1:2,:) = [];
Rd13_T(1:2,:) = [];
Rd23_T(1:2,:) = [];

X012_T = X012_T.';
X013_T = X013_T.';
X023_T = X023_T.';

X012_T(1:2,:) = [];
X013_T(1:2,:) = [];
X023_T(1:2,:) = [];

Xi12_T = Xi12_T.';
Xi13_T = Xi13_T.';
Xi23_T = Xi23_T.';

Xi12_T(1:2,:) = [];
Xi13_T(1:2,:) = [];
Xi23_T(1:2,:) = [];

Xd1_T = Xd1_T.';
Xd2_T = Xd2_T.';
Xd3_T = Xd3_T.';

Xd1_T(1:2,:) = [];
Xd2_T(1:2,:) = [];
Xd3_T(1:2,:) = [];
    
Xi1_T = Xi1_T.';
Xi2_T = Xi2_T.';
Xi3_T = Xi3_T.';

Xi1_T(1:2,:) = [];
Xi2_T(1:2,:) = [];
Xi3_T(1:2,:) = [];
    
Rd1_T = Rd1_T.';
Rd2_T = Rd2_T.';
Rd3_T = Rd3_T.';

Rd1_T(1:2,:) = [];
Rd2_T(1:2,:) = [];
Rd3_T(1:2,:) = [];
    
Ri1_T = Ri1_T.';
Ri2_T = Ri2_T.';
Ri3_T = Ri3_T.';

Ri1_T(1:2,:) = [];
Ri2_T(1:2,:) = [];
Ri3_T(1:2,:) = [];

R01_T = R01_T.';
R02_T = R02_T.';
R03_T = R03_T.';

R01_T(1:2,:) = [];
R02_T(1:2,:) = [];
R03_T(1:2,:) = [];
    
Zd1_T = Zd1_T.';
Zd2_T = Zd2_T.';
Zd3_T = Zd3_T.';

Zd1_T(1:2,:) = [];
Zd2_T(1:2,:) = [];
Zd3_T(1:2,:) = [];
    
X01_T = X01_T.';
X02_T = X02_T.';
X03_T = X03_T.';

X01_T(1:2,:) = [];
X02_T(1:2,:) = [];
X03_T(1:2,:) = [];
    
Z01_T = Z01_T.';
Z02_T = Z02_T.';
Z03_T = Z03_T.';

Z01_T(1:2,:) = [];
Z02_T(1:2,:) = [];
Z03_T(1:2,:) = [];

% KOD TABLICA TREBA PRILAGODITI ROWNAMES NA KOMPONENTE KOJE SU U ZADATKU.
% AKO NPR. NEMA T2 - MAKNI T2 JER SI GA MAKNUO I U PRORAÈUNU. VRIJEDI
% SUPROTNO ZA DODAVANJE NEKIH TRANSFORMATORA

tablica_pt_dn = table(Xd_T, Xi_T, X0_T, Rd_T, Ri_T, R0_T, ZN_T, Zd_T, Zi_T, Z0_T, 'VariableNames', {'Xd' 'Xi' 'X0' 'Rd' 'Ri' 'R0' 'ZN' 'Zd' 'Zi' 'Z0'}, 'RowNames', {'T1' 'T2' 'T5' 'T6' 'T7'});
disp(tablica_pt_dn)

tablica_pt_tn = table(Xd12_T, Xd13_T, Xd23_T, Rd12_T, Rd13_T, Rd23_T, X012_T, X013_T, X023_T, Xi12_T, Xi13_T, Xi23_T, Xd1_T, Xd2_T, Xd3_T, Xi1_T, Xi2_T, Xi3_T, Rd1_T, Rd2_T, Rd3_T, Ri1_T, Ri2_T, Ri3_T, R01_T, R02_T, R03_T, Zd1_T, Zd2_T, Zd3_T, X01_T, X02_T, X03_T, Z01_T, Z02_T, Z03_T, 'VariableNames', {'Xd12' 'Xd13' 'Xd23' 'Rd12' 'Rd13' 'Rd23' 'X012' 'X013' 'X023' 'Xi12' 'Xi13' 'Xi23' 'Xd1' 'Xd2' 'Xd3' 'Xi1' 'Xi2' 'Xi3' 'Rd1' 'Rd2' 'Rd3' 'Ri1' 'Ri2' 'Ri3' 'R01' 'R02' 'R03' 'Zd1' 'Zd2' 'Zd3' 'X01' 'X02' 'X03' 'Z01' 'Z02' 'Z03'}, 'RowNames', {'T3' 'T4'});
disp(tablica_pt_tn)

% ZRAÈNI VODOVI %

fprintf('\n[============ ZRAÈNI VODOVI ============]\n\n')

for n = 1:3     %unesti brojeve s oznaka vodova (ako su 'a' vodovi drugaèiji, potrebno je dodati formule u petlju)
    Zd_v(n) = Zdv_v(n)*l_v(n)*(Uref/U_v(n))^2;
    Zi_v(n) = Zd_v(n);
    Z0_v(n) = Z0v_v(n)*l_v(n)*(Uref/U_v(n))^2;
end 

Zd_v = Zd_v.';
Zi_v = Zi_v.';
Z0_v = Z0_v.';

tablica_pzv = table(Zd_v, Zi_v, Z0_v, 'VariableNames', {'Zd' 'Zi' 'Z0'}, 'RowNames', {'ZV1, ZV1a' 'ZV2, ZV2a' 'ZV3, ZV3a'});
disp(tablica_pzv)

% KABELI %

fprintf('\n[============ KABELI ============]\n\n')

for n = 1:3     %unesti brojeve s oznaka kabela
    Zd_k(n) = Zdv_k(n)*l_k(n)*(Uref/U_k(n))^2;
    Zi_k(n) = Zd_k(n);
    Z0_k(n) = Z0v_k(n)*l_k(n)*(Uref/U_k(n))^2;
end

Zd_k = Zd_k.';
Zi_k = Zi_k.';
Z0_k = Z0_k.';

tablica_pk = table(Zd_k, Zi_k, Z0_k, 'VariableNames', {'Zd' 'Zi' 'Z0'}, 'RowNames', {'K1' 'K2' 'K3'});
disp(tablica_pk)

% AKTIVNE MREŽE %

fprintf('\n[============ AKTIVNE MREŽE ============]\n\n')

for n = 1:2
    Xd_am(n) = (Uref^2)/Sk3(n);
    Xi_am(n) = Xd_am(n);
    X0_am(n) = 3*Xd_am(n);
    
    Rd_am(n) = RdXd_am(n)*Xd_am(n);
    Ri_am(n) = Rd_am(n);
    R0_am(n) = R0X0_am(n)*X0_am(n);
    
    Zd_am(n) = Rd_am(n)+Xd_am(n)*i;
    Zi_am(n) = Zd_am(n);
    Z0_am(n) = R0_am(n)+X0_am(n)*i;
end

Xd_am = Xd_am.';
Xi_am = Xi_am.';
X0_am = X0_am.';

Rd_am = Rd_am.';
Ri_am = Ri_am.';
R0_am = R0_am.';

Zd_am = Zd_am.';
Zi_am = Zi_am.';
Z0_am = Z0_am.';

tablica_pam = table(Xd_am, Xi_am, X0_am, Rd_am, Ri_am, R0_am, Zd_am, Zi_am, Z0_am, 'VariableNames', {'Xd' 'Xi' 'X0' 'Rd' 'Ri' 'R0' 'Zd' 'Zi' 'Z0'}, 'RowNames', {'A1' 'A2'});
disp(tablica_pam)

% MOTORI (2/4 IZ MOJE TABLICE SU BILI U MREŽI %

fprintf('\n[============ MOTORI ============]\n\n')

for n = 1:2     % ZA NEUZEMLJENE MOTORE
    Xd_M(n) = (Uref^2*eta_M(n)*cosfi_M(n))/(IpIn_M(n)*P_m(n));
    Xi_M(n) = Xd_M(n);
    X0_M(n) = inf;      %JER NISU UZEMLJENI
    
    Zd_M(n) = Xd_M(n)*i;
    Zi_M(n) = Zd_M(n);
    Z0_M(n) = inf;      %JER NISU UZEMLJENI
end

Xd_M = Xd_M.';
Xi_M = Xi_M.';
X0_M = X0_M.';

Zd_M = Zd_M.';
Zi_M = Zi_M.';
Z0_M = Z0_M.';

% PRILAGODITI VARIJABLE U TABLICI I ROWNAMES AKO IMA VIŠE/MANJE MOTORA

tablica_pm = table(Xd_M, Xi_M, X0_M, Zd_M, Zi_M, Z0_M, 'VariableNames', {'Xd' 'Xi' 'X0' 'Zd' 'Zi' 'Z0'}, 'RowNames', {'M1' 'M2'});
disp(tablica_pm)

% PRORAÈUN PO K.S. %

fprintf('\n[============ IZRAÈUNATE INPEDANCIJE ============]\n\n')

syms Zd Zi Z0;

Zd = 3.1707+1.4191i     %IZRAÈUNATI I UNESTI
Zi = Zd
Z0 = 96.4064+13.99i

fprintf('\n[============ 2pz K.S. ============]\n\n')

syms Ed a Ik2pz Ids Ii I0 Is It Vd Vi V0 VR;

a = 0;
Ed = 0;

Ed = Uref/sqrt(3);
a = -0.5+(sqrt(3)/2)*i;

Ik2pz = 0;
Ids = 0;
Ii = 0;
I0 = 0;
Is = 0;
It = 0;
Vd = 0;
Vi = 0;
V0 = 0;
VR = 0;


Ik2pz = -(sqrt(3)*Uref*Zi)/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('IK2pz = %f <%f\n\n', abs(Ik2pz), (180/pi)*angle(Ik2pz))

Ids = Ed*(Z0+Zi)/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('Id = %f <%f\n\n', abs(Ids), (180/pi)*angle(Ids))

Ii = -Ed*Z0/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('Ii = %f <%f\n\n', abs(Ii), (180/pi)*angle(Ii))

I0 = -Ed*Zi/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('I0 = %f <%f\n\n', abs(I0), (180/pi)*angle(I0))

Is = Ed*(Zi*(a^2-1)+Z0*(a^2-a))/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('Is = %f <%f\n\n', abs(Is), (180/pi)*angle(Is))

It = Ed*(Zi*(a-1)+Z0*(a-a^2))/(Zd*Zi+Zd*Z0+Zi*Z0);
fprintf('It = %f <%f\n\n', abs(It), (180/pi)*angle(It))

Vd = Ed-Ids*Zd;
fprintf('Vd = %f <%f\n\n', abs(Vd), (180/pi)*angle(Vd))

Vi = -Ii*Zi;
fprintf('Vi = %f <%f\n\n', abs(Vi), (180/pi)*angle(Vi))

V0 = -I0*Z0;
fprintf('V0 = %f <%f\n\n', abs(V0), (180/pi)*angle(V0))

VR = Vd+Vi+V0;
fprintf('VR = %f <%f\n\n', abs(VR), (180/pi)*angle(VR))


% DIREKTNI %

fprintf('\n[============ UDIO STRUJA K.S. - DIREKTNI ============]\n\n')

syms Zam Zg Zm Iam U6 Ig Ukl Im I5 U5 U4;

Zam = 0;
Zg = 0;
Zm = 0;
Iam = 0;
U6 = 0;
Ig = 0;
Ukl = 0;
Im = 0;
I5 = 0;
U5 = 0;
U4 = 0;

Zam = [Zd_am(1) + ((Zd1_T(1)+Zd2_T(1))*(Zd1_T(2)+Zd2_T(2))/((Zd1_T(1)+Zd2_T(1))+(Zd1_T(2)+Zd2_T(2)))) + ((Zd_v(1)*Zd_v(1))/(Zd_v(1)+Zd_v(1))) + Zd_v(2); Zd_am(2)];
Zg = [Zds_G(1)+Zd_T(1); Zds_G(3)];
Zm = ((Zd_M(1)*Zd_M(2))/(Zd_M(1)+Zd_M(2)))+Zd_k(1);

U6 = Vd + Ids*(Zd_k(1)+Zd_k(2));   %PREKO K.Z. I NAPONA ÈVOROVA
Ig(2) = (Ed-U6)/Zg(2);
Uk1 = (U6*(1/Zd_k(1)))/(1/Zd_M(1)+1/Zd_M(2)+1/Zd_k(1));

Im(1) = (Uk1-Ed)/Zd_M(1);
Im(2) = (Uk1-Ed)/Zd_M(2);
Im = Im.';

I5 = Ids + (Im(1)+Im(2)) + Ig(2);

U5 = (I5+((Ed/Zam(1))*Zd_v(3)))/(1/Zam(1)+1/Zg(1)+Zd_v(3))/(1/Zam(2)+1/Zd_v(3)+1/((Zd_T(3)*Zd_T(4))/(Zd_T(3)+Zd_T(4)))-(1/Zd_v(3))^2/(1/Zam(1)+1/Zg(1)+1/Zd_v(3)));
U4 = (U5*(1/Zd_v(3))+(Ed/Zam(1)))/(1/Zam(1)+1/Zg(1)+Zd_v(3));

Iam(1) = (Ed-U4)/Zam(1);
Iam(2) = (U5-Ed)/Zam(2);
Iam = Iam.';

Ig(1) = (U5-Ed)/Zg(1);
Ig = Ig.';

for n = 1:2
    fprintf('Im%i = %f <%f\n\n', n, abs(Im(n)), (180/pi)*angle(Im(n)))
end

for n = 1:2
    fprintf('Ig%i = %f <%f\n\n', n, abs(Ig(n)), (180/pi)*angle(Ig(n)))
end

for n = 1:2
    fprintf('Iam%i = %f <%f\n\n', n, abs(Iam(n)), (180/pi)*angle(Iam(n)))
end

% INVERZNI %

fprintf('\n[============ UDIO STRUJA K.S. - INVERZNI ============]\n\n')

syms Iami Igi Imi I5i U5i U4i


Iami = 0;
Igi = 0;
Imi = 0;
I5i = 0;
U5i = 0;
U4i = 0;
U6i = 0;

U6i = Vd + Ii*(Zd_k(1)+Zd_k(2));

Igi(2) = U6i/Zg(2);

Imi(1) = Uk1/Zd_M(1);
Imi(2) = Uk1/Zd_M(2);
Imi = Imi.';

I5i = Ids + (Imi(1)+Imi(2)) + Igi(2);

U5i = I5i/(1/Zam(2)+1/Zd_v(3)+1/((Zd_T(3)*Zd_T(4))/(Zd_T(3)+Zd_T(4)))-(1/Zd_v(3))^2/(1/Zam(1)+1/Zg(1)+1/Zd_v(3)));
U4i = (U5i*(1/Zd_v(3))+(Ed/Zam(1)))/(1/Zam(1)+1/Zg(1)+Zd_v(3));

Iami(1) = U4i/Zam(1);
Iami(2) = U5i/Zam(2);
Iami = Iami.';

Igi(1) = U5i/Zg(1);
Igi = Igi.';

for n = 1:2
    fprintf('Imi%i = %f <%f\n\n', n, abs(Imi(n)), (180/pi)*angle(Imi(n)))
end

for n = 1:2
    fprintf('Igi%i = %f <%f\n\n', n, abs(Igi(n)), (180/pi)*angle(Igi(n)))
end

for n = 1:2
    fprintf('Iami%i = %f <%f\n\n', n, abs(Iami(n)), (180/pi)*angle(Iami(n)))
end

% UKUPNI UDJELI &

for n = 1:2
    fprintf('\n[============ UDIO STRUJA K.S. - UKUPNI (AM%i) ============]\n\n', n)

    IAR(n) = (Iam(n)+Iami(n))*(Uref/U_am(n));
    fprintf('IA%iR = %f <%f\n\n', n, abs(IAR(n)), (180/pi)*angle(IAR(n)))

    IAS(n) = (a^2*Iam(n)+a*Iami(n))*(Uref/U_am(n));
    fprintf('IA%iS = %f <%f\n\n', n, abs(IAS(n)), (180/pi)*angle(IAS(n)))

    IAT(n) = (a*Iam(n)+a^2*Iami(n))*(Uref/U_am(n));
    fprintf('IA%iT = %f <%f\n\n', n, abs(IAT(n)), (180/pi)*angle(IAT(n)))
end


fprintf('\n[============ UDIO STRUJA K.S. - UKUPNI (G1) ============]\n\n', n)

    IGR(1) = (Iam(1)*exp(-5*pi/6)+Iami(1)*exp(-5*pi/6))*(Uref/Un_G(1));
    fprintf('IG1R = %f <%f\n\n', abs(IGR(1)), (180/pi)*angle(IGR(1)))

    IGS(1) = (a^2*Iam(1)*exp(-5*pi/6)+a*Iami(1)*exp(-5*pi/6))*(Uref/Un_G(1));
    fprintf('IG1S = %f <%f\n\n', abs(IGS(1)), (180/pi)*angle(IGS(1)))

    IGT(1) = (a*Iam(1)*exp(-5*pi/6)+a^2*Iami(1)*exp(-5*pi/6))*(Uref/Un_G(1));
    fprintf('IG1T = %f <%f\n\n', abs(IGT(1)), (180/pi)*angle(IGT(1)))
    
fprintf('\n[============ UDIO STRUJA K.S. - UKUPNI (G2) ============]\n\n', n)

    IGR(2) = (Iam(2)*exp(-5*pi/6)+Iami(2)*exp(-5*pi/6))*(Uref/Un_G(3));
    fprintf('IG2R = %f <%f\n\n', abs(IGR(2)), (180/pi)*angle(IGR(2)))

    IGS(2) = (a^2*Iam(2)*exp(-5*pi/6)+a*Iami(1)*exp(-5*pi/6))*(Uref/Un_G(3));
    fprintf('IG2S = %f <%f\n\n', abs(IGS(2)), (180/pi)*angle(IGS(2)))

    IGT(2) = (a*Iam(2)*exp(-5*pi/6)+a^2*Iami(1)*exp(-5*pi/6))*(Uref/Un_G(3));
    fprintf('IG2T = %f <%f\n\n', abs(IGT(2)), (180/pi)*angle(IGT(2)))

fprintf('\n[============ UDIO STRUJA K.S. - UKUPNI (M1) ============]\n\n', n)

    IMR(1) = (Im(1)+Imi(1))*(Uref/U_m(1));
    fprintf('IM1R = %f <%f\n\n', abs(IMR(1)), (180/pi)*angle(IMR(1)))

    IMS(1) = (a^2*Im(1)+a*Imi(1))*(Uref/U_m(1));
    fprintf('IM1S = %f <%f\n\n', abs(IMS(1)), (180/pi)*angle(IMS(1)))

    IMT(1) = (a*Im(1)+a^2*Imi(1))*(Uref/U_m(1));
    fprintf('IM1T = %f <%f\n\n', abs(IMT(1)), (180/pi)*angle(IMT(1)))
    
fprintf('\n[============ UDIO STRUJA K.S. - UKUPNI (M2) ============]\n\n', n)

    IMR(2) = (Im(2)+Imi(2))*(Uref/U_m(2));
    fprintf('IM2R = %f <%f\n\n', abs(IMR(2)), (180/pi)*angle(IMR(2)))

    IMS(2) = (a^2*Im(2)+a*Imi(2))*(Uref/U_m(2));
    fprintf('IM2S = %f <%f\n\n', abs(IMS(2)), (180/pi)*angle(IMS(2)))

    IMT(2) = (a*Im(2)+a^2*Imi(2))*(Uref/U_m(2));
    fprintf('IM2T = %f <%f\n\n', abs(IMT(2)), (180/pi)*angle(IMT(2)))
