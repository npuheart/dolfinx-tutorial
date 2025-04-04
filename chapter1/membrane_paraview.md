# Using Paraview for visualization
# 用Paraview画图


打开[Paraview](https://www.paraview.org/)，通过`File->Open`打开文件，选择`Xdmf3ReaderT`打开数据。


The next step is to visualize each of the functions. To do this, we choose `Filters->Alphabetic->ExtractBlock`. The next step is to select the first Unstructured Grid and press `Apply` as shown below:

![Select Block](select_block.png)

We can select the other block to visualize the deflection. There are also options to visualize the deflection in three dimensions using `Filters->Alphabetical->Warp By Scalar`, and change the layout to 3D by pressing the `2D`-button.

![Change interactive layout](2Dto3D.png)

Finally, press the `Set view direction button`.

![Set view direction](axis.png)

With these instructions, you can obtain the following figures

![Results for membrane](result_membrane.png)