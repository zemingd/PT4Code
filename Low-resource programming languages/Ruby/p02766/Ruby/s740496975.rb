x,y=gets.chomp.split(" ").map(&:to_i);
n = 1
while x >= y
  x = x / y
  n  = n+1
end
p n