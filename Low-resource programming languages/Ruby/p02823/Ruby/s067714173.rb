n,a,b = gets.chomp.split.map(&:to_i)
if (b - a).even?
  ans = (b - a ) / 2
else
  ans = [b - 1, n - a].min
end
puts ans