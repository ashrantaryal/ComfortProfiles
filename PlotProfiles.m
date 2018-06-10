% Written by Ashrant Aryal, aaryal@usc.edu
%Part of the work in "Energy Consequences of Comfort-driven Temperature Setpoints in Office Buildings", Aryal A, Becerik-Gerber B

clear all;
close all;
system_dependent('setprecision',64)
Files =['AS';'AW';'BS';'BW';'CS';'CW';'DS';'DW'];
suffix = ['Cold';'Comf';'Warm'];
mkdir FinalPlots
for fileNum=1:size(Files)
    Filelist = [Files(fileNum,:)];
    cd FinalPlots
    mkdir(Filelist);
    cd ..
    %import necessary files for each climate and season, one at a time
    
    disp(strcat('Current file= ' ,num2str(Filelist))) ;
    fileName = strcat('ProfilesData\',Files(fileNum,:),'X.csv');
    X = importfile(fileName);
    fileName = strcat('ProfilesData\',Files(fileNum,:),suffix(1,:),'.csv');
    Cold = importfile(fileName);
    fileName = strcat('ProfilesData\',Files(fileNum,:),suffix(2,:),'.csv');
    Comf = importfile(fileName);
    fileName = strcat('ProfilesData\',Files(fileNum,:),suffix(3,:),'.csv');
    Warm = importfile(fileName);
    
    for i = 1:size(X,1)
        % Remove empty cells that get imported as NAN
        currentX = X(i,~isnan(X(i,:)));
        currentCold = Cold(i,~isnan(Cold(i,:)));
        currentComf = Comf(i,~isnan(Comf(i,:)));
        currentWarm = Warm(i,~isnan(Warm(i,:)));
        
        %plot each profile
        figure;
        hold on;
        plot(currentX,currentCold,'b','LineWidth',1.5)
        plot(currentX,currentComf,'g','LineWidth',1.5)
        plot(currentX,currentWarm,'r','LineWidth',1.5)
        legend({'P(Cold)','P(Comfortable)','P(Hot)'});
        xlabel('Temperature C');
        
        %save the profiles in separate folders for each climate
        figPath = strcat('FinalPlots\',Filelist,'\');
        figName = strcat(num2str(i),'.jpg');
        saveas(gcf,fullfile(figPath,figName),'jpg');
    end
    close all;
end

