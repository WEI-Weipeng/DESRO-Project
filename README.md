# DESRO-Project

The design of parallel kinematics machines is a complex subject. In the parallel robot
design, the key point is structural parameter selection, which directly affects the mechanism
performance such as workspace or the range of rotation. Therefore, optimization design of
the parallel structure parameters becomes a very important issue. [1]
This paper concentrates on the design of 3-PRR parallel manipulators. Here are the
specifications:
1. The manipulator should have a cylindrical regular workspace of diameter equal to
100 mm, its height corresponding to the range of rotation of the moving-platform.
2. The range of rotation of the moving platform should be higher than 60 degrees
throughout the regular workspace.
3. The inverse condition numbers of its normalized forward and inverse Jacobian matrices should be larger than 0.1 throughout the regular workspace.
4. The manipulator should be compact, i.e., the overall size of the manipulator should
be as small as possible.
5. For a force equal to 10 N applied on the moving-platform along the normal to the plane
of motion in its home configuration, the point-displacement of the moving-platform
should be lower than 0.1 mm.
