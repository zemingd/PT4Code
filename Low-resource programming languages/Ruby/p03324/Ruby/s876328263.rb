a,b=gets.chomp.split(" ").map(&:to_i);
if a == 0 then
  ans = b
elsif a == 1 then
  ans = b * 100
else
  ans = b * 10000
end
puts ans
