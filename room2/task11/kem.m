function G = kem(G, v1,v2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
G = addedge(G,strcat(num2str(v1),'S'),strcat(num2str(v2),'S'));
end

