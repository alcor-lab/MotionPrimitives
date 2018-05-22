function PlotPrimitives(Group)
    if ~isinteger(Group)
        error('The input should be an integer between 1 and 6');
    end
    if Group==1
        FigR = 4;
        FigC = 3;
        Labels = {'Lean forward','Turn right','Raise the head',...
            'Turn bottom-right','Turn left','Roll left','Roll right',...
            'Turn bottom-left','Turn top-right','Turn top-left'};
    elseif Group==2
        FigR = 3;
        FigC = 3;
        Labels = {'Bend forward','Raise','Bend left','Bend right',...
            'Roll left','Roll right','Extension'};
    elseif Group==3
        FigR = 4;
        FigC = 4;
        Labels = {'Shoulder abduction','Roll the wrist','Elbow flexion',...
            'Elbow extension','Shoulder external rotation and elbow extension',...
            'Shoulder internal rotation and elbow extension',...
            'Shoulder external rotation and elbow flexion',...
            'Shoulder internal rotation and elbow flexion',...
            'Shoulder adduction','Shoulder circling',...
            'Shoulder external rotation','Shoulder internal rotation',...
            'Elbow lower medial flexion','Elbow upper medial flexion',...
            'Elbow lower medial extension','Elbow upper medial extension'};
    elseif Group==4
        FigR = 4;
        FigC = 4;
        Labels = {'Shoulder abduction','Roll the wrist','Elbow flexion',...
            'Elbow extension','Shoulder external rotation and elbow extension',...
            'Shoulder internal rotation and elbow extension',...
            'Shoulder external rotation and elbow flexion',...
            'Shoulder internal rotation and elbow flexion',...
            'Shoulder adduction','Shoulder circling',...
            'Shoulder external rotation','Shoulder internal rotation',...
            'Elbow lower medial flexion','Elbow upper medial flexion',...
            'Elbow lower medial extension','Elbow upper medial extension'};
    elseif Group==5
        FigR = 4;
        FigC = 3;
        Labels = {'Hip flexion','Hip extension','Hip abduction',...
            'Hip adduction','Knee flexion','Knee extension',...
            'Leg internal rotation','Leg external rotation',...
            'Knee lower medial flexion','Knee lower medial extension'};
    elseif Group==6
        FigR = 4;
        FigC = 3;
        Labels = {'Hip flexion','Hip extension','Hip abduction',...
            'Hip adduction','Knee flexion','Knee extension',...
            'Leg internal rotation','Leg external rotation',...
            'Knee lower medial flexion','Knee lower medial extension'};
    else
        error('The input should be an integer between 1 and 6');
    end
    
    Path = fullfile('Primitives',['G',num2str(Group)]);
    Prim = dir(Path);
    
    figure
    title(['Group' num2str(Group) ' Primitives'])
    for primitive = 3:length(Prim)
        load(fullfile(Path, ['Primitives' num2str(primitive-2)])) 
        color = rand(length(Primitives),3);
        subplot(FigR,FigC,primitive-2)
        for label=1:length(Primitives)
    
            for istances=1:size(Primitives{1,label}{1,1},2)
                x = Primitives{1,label}{1,1}(1,istances);
                y = Primitives{1,label}{1,1}(2,istances);
                z = Primitives{1,label}{1,1}(3,istances);
                plot3(x,y,z,'.','color',color(label,:))
                hold on
            end
        end
        title(Labels{primitive-2})
        axis equal
        grid on
    end
    
    
end