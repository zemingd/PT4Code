n,a,b = gets.chomp.split.map(&:to_i)
if (b - a + 1).odd?
  ans = (b - a + 1) / 2
else
  ans = [b - 1, n - a].min
end
puts ans