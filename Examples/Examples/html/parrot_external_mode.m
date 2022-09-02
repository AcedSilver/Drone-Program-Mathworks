%% Controlling Motor Speed of a PARROT Minidrone During Runtime Using External Mode 
%
% This example shows you how to use the External mode feature in Simulink(R) for
% speed control of motors on a PARROT(R) minidrone during runtime.
 
% Copyright 2017-2018 The MathWorks, Inc.
 
 
%% Introduction
%
% Simulink's External mode feature enables parameter tuning while the
% model is running on target hardware, without stopping the model. When you
% change parameter values from within Simulink, the modified parameter
% values are communicated to the target hardware. The effects
% of the parameters tuning activity can be monitored by viewing the
% signals on Scopes or Displays in Simulink.
%
% In this example, you will learn how to configure a Simulink model to run a 
% simulation in External mode on PARROT minidrone, and control the speed of motors  
% during runtime. 
%
%% Prerequisites
%
% Complete 
% <parrot_gettingstarted.html Getting Started with Simulink Support Package for PARROT Minidrones>.
%
 
%% Required Hardware
%
% To run this example, you will need the following hardware:
% 
% * PARROT Rolling Spider Or PARROT Mambo minidrone with fully charged battery and
% propellers
% * Micro USB type-B cable
% * Bluetooth Low energy (BLE) 4.0 support

%% Task 1 - View the Model and Set Up the External Mode 
% In this task, you will open the Simulink model and set up the External mode feature. 
%
% *1.* Connect the PARROT Minidrone to your computer as mentioned in
% <parrot_gettingstarted.html Getting Started example>. You can refer to the <matlab:helpview(fullfile(codertarget.internal.parrot.getDocRoot,'setup-and-configuration.html'),'-helpbrowser') Setup and Configuration>
% document if you face any issues while connecting the minidrone over Bluetooth to the host
% machine.
% 
% *2.* Open the <matlab:open_system('parrot_external_mode') External mode
% model>. 
%%
open_system('parrot_external_mode');
%%
% This model has already been configured for the *PARROT 
% Mambo* target. To learn how to setup a model for PARROT Minidrone, refer to
% <parrot_gettingstarted.html Getting Started with Simulink Support Package for PARROT Minidrones> example.
%
% *3.* Select *External* from the Simulation mode drop down list on the toolbar of the Simulink window.
%
% <<ext_mode_simulation.png>>
%
% *4.* Click the *Run* icon to start the External mode.
%
% <<ext_mode_start.png>>
%
% After the model build goes through successfully, the model waits for
% the start command from MATLAB to start executing the code on the drone. It can be seen that
% the time in the Simulink model is frozen at 0s as shown in the below figure. 
%
% <<parrot_stop_time.png>>
%% Task 2 - Start the Drone and Control the Speed of Motors
%
% In this task, you can start the PARROT minidrone motors in External mode, change the parameter values in the Simulink, 
% and view the change in speed of the motors in real-time.
%
% *1.* Open the PARROT Flight Control Interface:
%
% * If you have selected the *Launch PARROT Flight Control Interface automatically after build* option in the Configuration Parameters dialog box 
% (*Hardware Implementation* pane > *Target Hardware Resources* > *Build Options*), the PARROT Flight Control UI
% opens automatically after the build goes through successfully. 
%
% * You can also open the PARROT Flight Control Interface from the command line 
%
% >> <matlab:Parrot_FlightInterface; Parrot_FlightInterface>
%
% To know more about PARROT Flight Interface go to this <matlab:helpview(fullfile(codertarget.internal.parrot.getDocRoot,'ug','use-flightcontrol-ui-on-parrot-minidrone.html'),'-helpbrowser') section>. 
%
% *2.* In the PARROT Flight Control Interface, set the
% Power Gain and Flight Time as required.
%
% *3.* Click *START*.
%
% Once the Start command is received, the motors start spinning, and the 
% Simulink model starts running in External mode. It can be seen that the time starts
% running on the Simulink model.
%
% *4.* Open the
% <matlab:load_system('parrot_external_mode');hilite_system('parrot_external_mode/Flight_Control_System');
% Flight Control System> subsystem.
%
% *5.* The <matlab:load_system('parrot_external_mode');hilite_system('parrot_external_mode/Flight_Control_System/Accel2Motor');
% Accel2Motor> subsystem takes the accelerometer values and spins a
% particular combination of motors based on the orientation of the drone.
% For example, all the four motors spin when the drone is kept on a flat surface. 
%
% Try tilting the drone vertically to its right by $90^\circ$. You can observe
% that only the 1st motor spins in this case.
%
% *6.* While the model is running in External mode, view the
% accelerometer signals by opening the <matlab:load_system('parrot_external_mode');hilite_system('parrot_external_mode/Flight_Control_System/Scope');
% Scope>. 
%
% *7.* Vary the motor speed using the <matlab:load_system('parrot_external_mode');hilite_system('parrot_external_mode/Flight_Control_System/Slider');
% slider> and notice the change in speed of the motors.
%
% *8.* Click *STOP* in Flight Control Interface in order to stop the External mode simulation.
%
% <<ext_mode_stop.png>>
%
% Stopping the External mode simulation terminates the code running on the
% PARROT Minidrone. Before you can start another External mode
% simulation, you need to run the generated code again by clicking the
% *Run* icon on the toolbar of the Simulink window. 
% 
%% 
 
close_system('parrot_external_mode.slx', 0); 
displayEndOfDemoMessage(mfilename) 
