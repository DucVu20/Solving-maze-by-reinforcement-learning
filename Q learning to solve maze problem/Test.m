%% create a maze randomly by asigning the index of bombs randomly. 
tic
m=20
n=20
map = ones(m,n);
for i=1:120
    map(randi([1,m]),randi([1,n]))=-50;
end
starting_point=[1 1]
goal=[19 19];
[path Q_table]=Solving_Maze(map,starting_point,goal)       %staring_point and goal is the coordinate
toc