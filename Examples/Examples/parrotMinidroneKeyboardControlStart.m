function parrotMinidroneKeyboardControlStart()
% Open the Parrot Keyboard Control example project.

%   Copyright 2019 The MathWorks, Inc.
sppkgroot = strrep(codertarget.parrot.internal.getSpPkgRootDir(),'\','/');
[projectFolder,~]=matlab.internal.project.example.projectDemoSetUp(fullfile(sppkgroot,...
    'parrotexamples','parrotMinidroneKeyboardControl.zip'),[],[]);
simulinkproject(projectFolder);

end
