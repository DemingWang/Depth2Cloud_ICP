## Depth2Cloud_ICP

环境：
> opencv-3.4  
> pcl-1.8
> vtk-8.1

文件目录：  
* build   
* img  
    * color_113.png  
    * depth_113.png 
* model
    * ape.ply
    * monkey.ply
    * pointcloud.pcd //通过depth_113.png和color_113.png转换得到
* output
    pointcloud.pcd
* src
    * depth2cloud.cpp
    * depth2cloud.m
    * pcl_test.cpp
    * interactive_icp.cpp
* CMakeLists.txt  
* README.md



=================================================================  
Update Logs:  

07/05 10:23  ：Init 

* depth2cloud : 将深度图转换成点云
* pcl_test: 测试pcl库是否装好
* interactive_icp : 利用ICP实现点云配准








