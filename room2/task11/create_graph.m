clear all
nodenames= {'1S' '2S' '3S' '4S' '5S' '6S' '7S' '8S' '9S' '10S' '11S' '12S' '13S' '14S' '15S' '16S' '17S' '18S' '19S' '20S' '21S' '22S' '23S' '24S' '25S' '26S' '27S' '28S' '29S' '30S' '31S' '32S' '33S' '1E' '2E' '3E' '4E' '5E' '6E' '7E' '8E' '9E' '10E' '11E' '12E' '13E' '14E' '15E' '16E' '17E' '18E' '19E' '20E' '21E' '22E' '23E' '24E' '25E' '26E' '27E' '28E' '29E' '30E' '31E' '32E' '33E'};
G = digraph();
G = addnode(G,nodenames);

G = oae(G,03,15);
G = kem(G,25,21);
G = oat(G,15,32);
G = kem(G,29,04);
G = eet(G,19,02);
G = oat(G,12,28);
G = eet(G,04,18);
G = oat(G,29,19);
G = kem(G,19,01);
G = eet(G,21,14);
G = oat(G,29,02);
% G = oae(G,01,14); G = kem(G,32,24); G = kem(G,18,33); G = kem(G,07,13); G
% = oae(G,30,27); G = oat(G,20,08); G = oat(G,32,01); G = oat(G,09,02); G =
% oat(G,23,13); G = oat(G,09,01); G = eet(G,18,26); G = kem(G,30,28); G =
% oat(G,05,28); G = oat(G,13,24); G = kem(G,11,08); G = kem(G,11,09); G =
% kem(G,31,18); G = oae(G,05,26); G = oat(G,33,04); G = kem(G,08,02); G =
% oae(G,12,09); G = oae(G,27,14); G = oat(G,25,21); G = oat(G,03,16); G =
% kem(G,17,27); G = kem(G,19,32); G = oat(G,07,09); G = kem(G,24,09); G =
% eet(G,09,23); G = oae(G,26,08); G = eet(G,27,23); G = eet(G,01,02); G =
% kem(G,10,17); G = kem(G,29,12); G = eet(G,06,15); G = kem(G,28,05); G =
% oat(G,20,12); G = oat(G,25,28); G = kem(G,02,13); G = oat(G,03,15); G =
% oat(G,26,28); G = oae(G,21,20); G = kem(G,16,24); G = eet(G,18,08); G =
% oat(G,11,06); G = kem(G,10,29); G = eet(G,11,04); G = oat(G,14,27); G =
% oae(G,18,10); G = oae(G,16,26); G = oat(G,27,21); G = oat(G,31,18); G =
% oat(G,02,15); G = oae(G,19,01); G = kem(G,12,08); G = oae(G,27,03); G =
% oat(G,24,21); G = kem(G,01,06); G = oat(G,23,07); G = kem(G,07,05); G =
% oat(G,02,06); G = kem(G,30,10); G = oat(G,06,01); G = oat(G,33,31); G =
% oat(G,13,28); G = oat(G,03,14); G = eet(G,21,13); G = kem(G,32,17); G =
% oat(G,26,19); G = oae(G,28,26); G = eet(G,28,04); G = eet(G,01,04); G =
% eet(G,19,13); G = eet(G,16,23); G = kem(G,20,12); G = kem(G,14,03); G =
% oat(G,13,09); G = eet(G,22,13); G = eet(G,31,04); G = eet(G,21,08); G =
% kem(G,07,22); G = oae(G,19,06); G = oat(G,25,10); G = eet(G,18,03); G =
% oae(G,10,27); G = oae(G,14,26); G = oae(G,29,33); G = eet(G,24,23); G =
% oat(G,09,11); G = kem(G,31,26); G = oae(G,16,11); G = oae(G,18,24); G =
% oat(G,23,30); G = oae(G,01,29); G = eet(G,22,23); G = eet(G,10,03); G =
% oae(G,18,28); G = oat(G,08,25); G = kem(G,20,29); G = oat(G,24,11); G =
% oat(G,14,17); G = eet(G,11,13); G = oae(G,09,14); G = oae(G,18,05); G =
% oat(G,16,09); G = oat(G,19,21); G = kem(G,30,17); G = oat(G,13,16); G =
% oat(G,33,25); G = kem(G,01,05); G = oat(G,33,10); G = eet(G,19,15); G =
% oat(G,27,17); G = oat(G,17,11); G = eet(G,22,16); G = oat(G,30,27); G =
% kem(G,10,12);

plot(G)