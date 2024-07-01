n,a,b = gets.split.map(&:to_i)

if (a-b).even?
  p [[a,b].max - 1, n - [a,b].min - 1, (a-b).abs/2].min
else
  p [[a,b].max - 1, n - [a,b].min - 1].min
end