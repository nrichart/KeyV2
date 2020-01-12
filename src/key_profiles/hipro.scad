// my own measurements
module hipro_row(row=3, column=0) {
  $key_shape_type = "sculpted_square";

  $bottom_key_width = 18.35;
  $bottom_key_height = 18.17;

  $width_difference = ($bottom_key_width - 12.3);
  $height_difference = ($bottom_key_height - 12.65);
  $dish_type = "spherical";
  $dish_depth = 0.75;
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $top_skew = 0;
  $height_slices = 10;
  // might wanna change this if you don't minkowski
  // do you even minkowski bro
  $corner_radius = 0.25;

  $top_tilt_y = side_tilt(column);
  extra_height = extra_side_tilt_height(column);

  if (row <= 1){
    $total_depth = 13.7 + extra_height;
    // TODO I didn't change these yet
    $top_tilt = -13;
    children();
  } else if (row == 2) {
    $total_depth = 11.1 + extra_height;
    $top_tilt = -7;
    children();
  } else if (row == 3) {
    $total_depth = 11.1 + extra_height;
    $top_tilt = 7;
    children();
  } else if (row == 4 || row == 5){
    $total_depth = 12.25 + extra_height;
    $top_tilt = 13;
    children();
  } else {
    children();
  }
}