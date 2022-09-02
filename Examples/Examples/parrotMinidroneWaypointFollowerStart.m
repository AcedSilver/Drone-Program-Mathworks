function parrotMinidroneWaypointFollowerStart()
% Open the Parrot Waypoint follower example project.

%   Copyright 2019 The MathWorks, Inc.
sppkgroot = strrep(codertarget.parrot.internal.getSpPkgRootDir(),'\','/');
[projectFolder,~]=matlab.internal.project.example.projectDemoSetUp(fullfile(sppkgroot,...
    'parrotexamples','parrotMinidroneWaypointFollower.zip'),[],[]);
simulinkproject(projectFolder);

end
