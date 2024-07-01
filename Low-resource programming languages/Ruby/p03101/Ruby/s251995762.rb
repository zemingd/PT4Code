H,W=gets.chomp.split(" ").map(&:to_i);
a,b=gets.chomp.split(" ").map(&:to_i);
x=H*W-H*b-W*a+b*a
puts(x)