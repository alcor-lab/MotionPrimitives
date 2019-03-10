# MotionPrimitives

## Description
Human motion primitives database relative to the paper "Discovery and recognition of motion primitives in human activities", Marta Sanzari, Valsamis Ntouskos, Fiora Pirri, members of the ALCOR lab, Sapienza University of Rome.


In the Json file dataset_subjects.json are listed 11186 examples of human motion primitives extracted from the dataset Human3.6M [1].
The Json file encodes a dictionary (namely a struct array) where the keys corresponds to a subject and an action in the Human3.6M dataset, 
and the values are dictionaries (struct arrays) containing the correspondent human motion primitives for the given subject and action.
For each instance of motion primitive are given the correspondent label, the milliseconds in which the motion primitive can be found in the video (for the given subject and action in the H3.6M dataset), the frames and the 3D skeleton positions.

In the Json file dataset_motion_primitives.json are listed 11186 examples of human motion primitives extracted from the dataset Human3.6M [1].
The Json file encodes a dictionary (namely a struct array) where the keys corresponds to a human motion primitive (there are a total of 54 human motion primitives), 
and the values are dictionaries (struct arrays) containing the correspondent instances found in the H3.6M dataset.
For each instance of motion primitive are given the correspondent subject and action, the milliseconds in which the motion primitive can be found in the video (for the given subject and action in the H3.6M dataset), the frames and the 3D skeleton positions.

The 3D positions provided in the json files corresponds to the parametrization provided in the original coordinate space in the H3.6M dataset (D3_Positions).

Git Large Files has been used to manage the size of the json files dataset_subjects.json and dataset_motion_primitives.json.

Additionally, in the Json file dataset_subjects_no3Dpositions.json are listed the same human motion primitives as in the file dataset_subjects.json, without the correspondent frames and 3D skeleton positions.

Into the folder Primitives are extracted, for each skeleton group and each primitive label, the joint trajectories corresponding to some motion primitive examples.
For our approach purposes only the most external joint trajectory is significant and visualized. 
The Matlab file PlotPrimitives.m can be used to visualize the motion primitives examples.
G1 stands for the group Head, G2 for the group Torso, G3 for the group Right Arm, G4 for Left Arm, G5 for Right Leg and G6 for Left Leg.

### Usage example:
Clone with Git Large Files or unzip the folder MotionPrimitives into your Matlab workspace.
Define a skeleton group using an integer N, between 1 and 6, and run into your Matlab command window:
PlotPrimitives(N)

To read the json files run in a Matlab workspace:
name = 'dataset_motion_primitives.json';
dictionary = jsondecode(fileread(name));

or

name = 'dataset_subjects.json';
dictionary = jsondecode(fileread(name));

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
   The datasets including Figures and Primitives are made available by the authors (Marta Sanzari, Valsamis Ntouskos, Fiora Pirri) under the Creative Common attribution CC0 1.0 Universal (CC0 1.0). 
    To the extent possible under law, the authors have waived all copyright and related or neighboring rights to the datasets.
