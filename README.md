# MotionPrimitives

## Description
Human motion primitives database relative to the paper "Discovery and recognition of motion primitives in human activities", Marta Sanzari, Valsamis Ntouskos, Fiora Pirri, members of the ALCOR lab, Sapienza University of Rome.

In the Json file dataset_motion_primitives.json are listed 11195 examples of human motion primitives extracted from the dataset Human3.6M [1].
For each example of motion primitive are given the correspondent subject, activity and milliseconds.

Into the folder Primitives are extracted, for each skeleton group and each primitive label, the joint trajectories corresponding to some motion primitive examples.
For our approach purposes only the most external joint trajectory is significant and visualized. 
The Matlab file PlotPrimitives.m can be used to visualize the motion primitives examples.
G1 stands for the group Head, G2 for the group Torso, G3 for the group Right Arm, G4 for Left Arm, G5 for Right Leg and G6 for Left Leg.

### Usage example:
Clone or unzip the folder MotionPrimitives into your Matlab workspace.
Define a skeleton group using an integer N, between 1 and 6, and run into your Matlab command window:
PlotPrimitives(N)

Tested under Windows and Ubuntu, compatible with Matlab versions following R2006a.

### References:
[1] Ionescu C, Papava D, Olaru V, Sminchisescu C. Human3.6M: Large Scale Datasets and
Predictive Methods for 3D Human Sensing in Natural Environments. TPAMI.
2014;36(7):1325–1339.

## Citation
Please cite this paper in your publications if this database  helps your research:

    @inproceedings{sanzari2019,
      author    = {Marta Sanzari and Valsamis Ntouskos and Fiora Pirri},
      title     = {Human motion primitive discovery and recognition},
      booktitle = {arXiv preprint arXiv:1709.10494v6},
      year      = {2019},
    }

## License
<p xmlns:dct="http://purl.org/dc/terms/">
   <a rel="license"
      href="http://creativecommons.org/publicdomain/zero/1.0/">
     <img src="http://i.creativecommons.org/p/zero/1.0/88x31.png" 
style="border-style: none;" alt="CC0" />
   </a>
   <br />
   To the extent possible under law,
   <a rel="dct:publisher"
      href="https://github.com/alcor-lab/MotionPrimitives">
     <span property="dct:title">Fiora Pirri</span></a>
   has waived all copyright and related or neighboring rights to
   <span property="dct:title">Discovery and recognition of motion 
primitives in human activities</span>.
