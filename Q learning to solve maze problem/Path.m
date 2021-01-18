function path=Path(Q_table,starting_point,map)
path=[];
%%[y x]=size(map);
a=0;
x=starting_point(2);
y=starting_point(1);
state = sub2ind(size(map),y,x);
while a==0
    action=find(Q_table(state,:)==max(Q_table(state,:)));
    if action==1
        x=x+1;
    elseif action==2
        y=y-1;
    elseif action==3
        x=x-1;
    else
        y=y+1;
    end
    state = sub2ind(size(map),y,x);
    path=[path; state];
    if max(Q_table(state,:))==max(Q_table(:));
        a=1;
        break;
    end
end
end
    
    
