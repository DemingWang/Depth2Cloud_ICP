imdepth = imread('../img/depth_113.png');
imdepth(imdepth == 34518) = 0;
imdepth = double(imdepth);
camera_cx = 325.2611;
camera_cy = 242.04899;
camera_fx = 572.4114;
camera_fy = 573.57043;
camera_factor = 1000;
imdepth = imdepth / camera_factor;

intrinsic = [camera_fx, 0, camera_cx;
             0, camera_fy, camera_cy;
             0, 0, 1];



fdx=intrinsic(1,1);
fdy=intrinsic(2,2);
u0=intrinsic(1,3);
v0=intrinsic(2,3);

[h,w] = size(imdepth);
u=repmat(1:w,[h,1]);
v=repmat(1:h,[w,1])';

Z=imdepth;
X=(Z(:).*(u(:)-u0))/fdx;
Y=(Z(:).*(v(:)-v0))/fdy;
figure,pcshow([X(:),Y(:),Z(:)]);
