function parrotMinidroneOrbitFollowerStart()
% Open the Parrot Orbit follower example project.

%   Copyright 2019 The MathWorks, Inc.
sppkgroot = strrep(codertarget.parrot.internal.getSpPkgRootDir(),'\','/');
[projectFolder,~]=matlab.internal.project.example.projectDemoSetUp(fullfile(sppkgroot,...
    'parrotexamples','parrotMinidroneOrbitFollower.zip'),[],[]);
simulinkproject(projectFolder);

end
