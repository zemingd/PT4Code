aryMondai = gets.split();
height = aryMondai[0].to_i;
width = aryMondai[1].to_i;

area = height * width;
len = height * 2 + width * 2;

puts area.to_s + " " + len.to_s;