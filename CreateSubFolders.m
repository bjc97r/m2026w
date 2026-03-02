% Create 16 folders named m00 to m15 in current directory
for k = 0:15
    folderName = sprintf('m%02d', k);
    if ~exist(folderName, 'dir')
        mkdir(folderName);
    end
end

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
