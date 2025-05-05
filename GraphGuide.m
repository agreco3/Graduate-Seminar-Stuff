A = [0 9 2 3; 9 0 1 0; 2 1 0 0; 3 0 0 0]; %adjacenct matrix; can include diagonal if you apply 'omitselfloops' when setting G
labels = ["dog","cat","fish","cow"]; %list of labels for vertices
G = graph(A,labels); %this sets the graph but does not plot it
weights = G.Edges.Weight; %just storing the weights for future use

p = plot(G); 
p.NodeColor = 'black'; p.EdgeColor = 'black'; %this can obviously be any color, I just like black
widths = 5*weights/max(weights); %you can also just make this the weights G.Edges.Weight or play around to get the widths to look nice.
p.LineWidth = widths; %this sets the widths of edges in the actual plot based on the previous line
p %command window should show you all the useful data of the plot so that you can make any changes you like

%this is an incredibly basic way to make a graph that "looks nice" while
%having the weight of edges illustrated without too much text. you can also
%go on the MathWorks website if you want to get more creative, or explore
%other software, but this I hope this is helpful for starting out