clear all
nodenames= {'1S' '2S' '3S' '4S' '5S' '6S' '7S' '8S' '9S' '10S' '11S' '12S' '13S' '14S' '15S' '16S' '17S' '18S' '19S' '20S' '21S' '22S' '23S' '24S' '25S' '26S' '27S' '28S' '29S' '30S' '31S' '32S' '33S' '1E' '2E' '3E' '4E' '5E' '6E' '7E' '8E' '9E' '10E' '11E' '12E' '13E' '14E' '15E' '16E' '17E' '18E' '19E' '20E' '21E' '22E' '23E' '24E' '25E' '26E' '27E' '28E' '29E' '30E' '31E' '32E' '33E'};
G = digraph();
G = addnode(G,nodenames);

% adding edges
for id = 1:33
    G = addedge(G,strcat(num2str(id),'S'),strcat(num2str(id),'E'));
end

G = oae(G,3,15);
G = kem(G,25,21);
G = oat(G,15,32);
G = kem(G,29,4);
G = eet(G,19,2);
G = oat(G,12,28);
%=============================
% possible error 1 
%=============================
%G = eet(G,4,18);
%=============================
%=============================
G = oat(G,29,19);
G = kem(G,19,1);
G = eet(G,21,14);
G = oat(G,29,2);
G = oae(G,1,14);
G = kem(G,32,24);
%=============================
% possible error 2
%=============================
G = kem(G,18,33);
%=============================
%=============================
G = kem(G,7,13);
G = oae(G,30,27);
G = oat(G,20,8);
G = oat(G,32,1);
G = oat(G,9,2);
G = oat(G,23,13);
G = oat(G,9,1);
G = eet(G,18,26);
G = kem(G,30,28);
G = oat(G,5,28);
G = oat(G,13,24);
G = kem(G,11,8);
G = kem(G,11,9);
G = kem(G,31,18);
G = oae(G,5,26);
%=============================
% 1. cycle occurrence
%=============================
G = oat(G,33,4);
%=============================
G = kem(G,8,2);
G = oae(G,12,9);
G = oae(G,27,14);
G = oat(G,25,21);
G = oat(G,3,16);
G = kem(G,17,27);
G = kem(G,19,32);
G = oat(G,7,9);
G = kem(G,24,9);
G = eet(G,9,23);
G = oae(G,26,8);
G = eet(G,27,23);
G = eet(G,1,2);
G = kem(G,10,17);
G = kem(G,29,12);
G = eet(G,6,15);
G = kem(G,28,5);
G = oat(G,20,12);
G = oat(G,25,28);
G = kem(G,2,13);
G = oat(G,3,15);
G = oat(G,26,28);
G = oae(G,21,20);
G = kem(G,16,24);
G = eet(G,18,8);
G = oat(G,11,6);
G = kem(G,10,29);
G = eet(G,11,4);

%G = oat(G,14,27);
v1=14;
v2=27;
%G = addedge(G,strcat(num2str(v1),'S'),strcat(num2str(v2),'E'));
G = addedge(G,strcat(num2str(v2),'E'),strcat(num2str(v1),'E'));


%=============================
% 2. cycle occurrence
%=============================
G = oae(G,18,10);
%=============================
G = oae(G,16,26);
G = oat(G,27,21);
G = oat(G,31,18);
G = oat(G,2,15);

%G = oae(G,19,1);
v1=19;
v2=1;
%G = addedge(G,strcat(num2str(v1),'S'),strcat(num2str(v2),'S'));
G = addedge(G,strcat(num2str(v2),'S'),strcat(num2str(v1),'E'));

G = kem(G,12,8);
G = oae(G,27,3);
G = oat(G,24,21);
G = kem(G,1,6);
G = oat(G,23,7);
G = kem(G,7,5);
%=============================
% 3. cycle occurrence
%=============================
G = oat(G,2,6);
%=============================
G = kem(G,30,10);
G = oat(G,6,1);
G = oat(G,33,31);
G = oat(G,13,28);
G = oat(G,3,14);
G = eet(G,21,13);
G = kem(G,32,17);
G = oat(G,26,19);

%G = oae(G,28,26);
v1=28;
v2=26;
G = addedge(G,strcat(num2str(v1),'S'),strcat(num2str(v2),'S'));
%G = addedge(G,strcat(num2str(v2),'S'),strcat(num2str(v1),'E'));

%=============================
% 4. cycle occurrence
%=============================
G = eet(G,28,4);
%=============================
G = eet(G,1,4);
G = eet(G,19,13);
G = eet(G,16,23);
G = kem(G,20,12);
G = kem(G,14,3);
G = oat(G,13,9);
G = eet(G,22,13);
%=============================
% 5. cycle occurrence
%=============================
G = eet(G,31,4);
%=============================
G = eet(G,21,8);
G = kem(G,7,22);
G = oae(G,19,6);
G = oat(G,25,10);
G = eet(G,18,3);
G = oae(G,10,27);
G = oae(G,14,26);
G = oae(G,29,33);
G = eet(G,24,23);
G = oat(G,9,11);
G = kem(G,31,26);
G = oae(G,16,11);
%=============================
% 6. cycle occurrence
%=============================
G = oae(G,18,24);
%=============================
G = oat(G,23,30);
G = oae(G,1,29);
G = eet(G,22,23);
G = eet(G,10,3);
G = oae(G,18,28);
G = oat(G,8,25);
G = kem(G,20,29);
G = oat(G,24,11);
G = oat(G,14,17);
G = eet(G,11,13);
G = oae(G,9,14);
G = oae(G,18,5);
G = oat(G,16,9);
G = oat(G,19,21);
G = kem(G,30,17);
G = oat(G,13,16);
G = oat(G,33,25);
G = kem(G,1,5);
G = oat(G,33,10);
G = eet(G,19,15);
G = oat(G,27,17);
G = oat(G,17,11);
G = eet(G,22,16);
G = oat(G,30,27);
G = kem(G,10,12);

% plot resut
plot(G)