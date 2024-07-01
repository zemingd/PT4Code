N = gets.to_i
as = gets.split.map(&:to_i)

n = 0
as.each do |a|
  if n + 1 == a
    n += 1
  end
end
if n == 0
  puts -1
else
  puts N - n
end
