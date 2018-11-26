Includes synthetic comfort profiles generated using the RP884 database.

Inside plots, each folder includes 50 profiles for the climate and season. The first letter represents the climate and the second letter represents the season. For example: AS - climate A for summer season.

The raw data for the profiles in included inside ProfilesData folder in CSV format (space delimited). The following naming convention is used:

First Character - climate type (A, B)
Second Character - Season (Summer -S, Winter -W)
Remaining string:
X - X axis values (operative temperature degree C)
Cold - Probability of Cold discomfort
Comf - Probability of Comfort
Warm - Probability of Warm discomfort

Inside the CSV files, each row corresponds to a comfort profile. 
For example, to build the comfort profiles in climate type A, for Summer, take the same row from ASX, ASCold, ASComf, ASWarm and plot them.

An example code in MATLAB to plot the profiles is included. Please download the entire folder and run PlotProfiles.m


The dataset is part of the work from the paper "Energy Consequences of Comfort-driven Temperature Setpoints in Office Buildings", Aryal A, Becerik-Gerber B
Please cite the paper if your work uses these comfort profiles.
For more information please contact Ashrant Aryal at: aaryal@usc.edu

Aryal, Ashrant, and Burcin Becerik-Gerber. "Energy consequences of Comfort-driven temperature setpoints in office buildings." Energy and Buildings 177 (2018): 33-46. https://doi.org/10.1016/j.enbuild.2018.08.013

@article{aryal2018energy,
  title={Energy consequences of Comfort-driven temperature setpoints in office buildings},
  author={Aryal, Ashrant and Becerik-Gerber, Burcin},
  journal={Energy and Buildings},
  volume={177},
  pages={33--46},
  year={2018},
  publisher={Elsevier}
}
