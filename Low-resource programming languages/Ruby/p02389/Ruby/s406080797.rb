tateyoko = gets;
aryTateyoko = tateyoko.spllit(' ');
height = aryTateyoko[1].to_i;
width = aryTateyoko[2].to_i;
area = height * width;
len = height * 2 + width * 2;
puts area + " " + len;