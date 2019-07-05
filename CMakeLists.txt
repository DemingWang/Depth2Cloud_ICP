# cmake_minimum_required(VERSION 3.0)
# project(OpenGL_c)

# set(CMAKE_CXX_STANDARD 11)
# SET(CMAKE_BUILD_TYPE DEBUG) 

# find_package(OpenGL REQUIRED)
# find_package(GLUT REQUIRED)
# find_package(OpenCV 3.0.0 REQUIRED)
# include_directories(library ${OPENGL_INCLUDE_DIRS} ${GLUT_INCLUDE_DIRS} ${OPENCV_INCLUDE_DIRS} include)

# set(lookarroundsrcfile
#     src/lookaround.cpp
#     src/PlyLoader.cpp
#     src/IcosahedronGenerate.cpp
#     src/PoseTree.cpp
#     #src/PCOFmod.cpp
#     src/line2Dup.cpp
#     src/utils_.cpp
#     src/LinemodBPT.cpp
#  )
# add_executable(lookaround ${lookarroundsrcfile})
# target_link_libraries(lookaround ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES} ${OpenCV_LIBRARIES})


# add_executable(PCOFtest src/PCOFtest.cpp)
# target_link_libraries(PCOFtest ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES} ${OpenCV_LIBRARIES})

# set(pcofmodsrcfile
#    src/PCOFmod.cpp
#    src/line2Dup.cpp
#    src/utils_.cpp
# )

# add_executable(PCOFmod ${pcofmodsrcfile})
# target_link_libraries(PCOFmod ${OpenCV_LIBRARIES})

# set(srcfile
#     src/glLoadPly.cpp
#     src/PlyLoader.cpp
# )

# add_executable(glloadply ${srcfile})
# target_link_libraries(glloadply ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES} )


# add_executable(Icosahedron src/Icosahedron.cpp)
# target_link_libraries(Icosahedron ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES})

# add_executable(Icosahedron2 src/Icosahedron2.cpp)
# target_link_libraries(Icosahedron2 ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES})



cmake_minimum_required(VERSION 3.0)
project(pcl_test)
 
find_package(PCL 1.8 REQUIRED)
find_package(OpenCV 3.0.0 REQUIRED)
 
include_directories(${PCL_INCLUDE_DIRS} ${OPENCV_INCLUDE_DIRS})
# link_directories(${PCL_LIBRARY_DIRS})
# add_definitions(${PCL_DEFINITIONS})
 
add_executable(pcl_test src/pcl_test.cpp)
target_link_libraries (pcl_test ${PCL_LIBRARIES} ${OpenCV_LIBRARIES})
 
# install(TARGETS pcl_test RUNTIME DESTINATION bin)

add_executable(depth2cloud src/depth2cloud.cpp)
target_link_libraries (depth2cloud ${PCL_LIBRARIES} ${OpenCV_LIBRARIES})


add_executable(interactive_icp src/interactive_icp.cpp)
target_link_libraries (interactive_icp ${PCL_LIBRARIES} ${OpenCV_LIBRARIES})