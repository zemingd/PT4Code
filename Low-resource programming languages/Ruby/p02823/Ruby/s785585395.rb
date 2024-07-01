n,a,b = gets.chomp.split.map(&:to_i)
if (b - a).even?
  ans = (b - a ) / 2
else
  ans = (b - a ) / 2 + [a - 1,n - b].min + 1
end
puts ans