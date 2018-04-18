function G = oat(G, v1,v2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
G = addedge(G,strcat(num2str(v1),'S'),strcat(num2str(v2),'E'));
G = addedge(G,strcat(num2str(v2),'E'),strcat(num2str(v1),'E'));
if G.isdag==0
    printf('oat %d %d', v1, v2);
end
%plot(G)
end

