function G = eet(G, v1,v2)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
G = addedge(G,strcat(num2str(v1),'E'),strcat(num2str(v2),'S'));
if G.isdag==0
    printf('eet %d %d', v1, v2);
end
%plot(G)
end

