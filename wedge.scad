module wedge(radius, height, angle) {
  angle = angle % 360;
  if (angle>180) {
    union() {
      wedge(radius, height, 180);
      rotate([0,0,180]) {
        wedge(radius, height, angle-180);
      }
    }
  }
  intersection() {
    cylinder(r=radius, h=height);
    translate([-1.05*radius,0,-0.5]) {
      cube([2.1*radius,2.1*radius,height+1]);
    }
    rotate([0,0,180+angle]) {
      translate([-1.05*radius,0,-0.5]) {
        cube([2.1*radius,2.1*radius,height+1]);
      }
    }
  }
}
