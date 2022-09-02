function parrotMinidroneCompetitionStart()
% Open the Parrot Competition project.

%   Copyright 2018 The MathWorks, Inc.
sppkgroot = strrep(codertarget.parrot.internal.getSpPkgRootDir(),'\','/');
[projectFolder,~]=matlab.internal.project.example.projectDemoSetUp(fullfile(sppkgroot,...
    'parrotexamples','parrotMinidroneCompetition.zip'),[],[]);
simulinkproject(projectFolder);

end