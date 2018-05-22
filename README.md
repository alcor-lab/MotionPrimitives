# MotionPrimitives

Human motion primitives database relative to the paper "Discovery and recognition of motion primitives in human activities", Marta Sanzari, Valsamis Ntouskos, Fiora Pirri, members of the ALCOR lab, Sapienza University of Rome.

In the Json file dataset_motion_primitives.json are listed 11195 examples of human motion primitives extracted from the dataset Human3.6M [1].
For each example of motion primitive are given the correspondent subject, activity and milliseconds.

Into the folder Primitives are extracted, for each skeleton group and each primitive label, the joint trajectories corresponding to some motion primitive examples.
For our approach purposes only the most external joint trajectory is significant and visualized. 
The Matlab file PlotPrimitives.m can be used to visualize the motion primitives examples.
G1 stands for the group Head, G2 for the group Torso, G3 for the group Right Arm, G4 for Left Arm, G5 for Right Leg and G6 for Left Leg.

Usage example:
Clone or unzip the folder MotionPrimitives into your Matlab workspace.
Define a skeleton group using an integer N, between 1 and 6, and run into your Matlab command window:
PlotPrimitives(N)

Tested under Windows and Ubuntu, compatible with Matlab versions following R2006a.


References:
[1] Ionescu C, Papava D, Olaru V, Sminchisescu C. Human3.6M: Large Scale Datasets and
Predictive Methods for 3D Human Sensing in Natural Environments. TPAMI.
2014;36(7):1325–1339.