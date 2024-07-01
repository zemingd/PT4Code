n = gets.to_i
p = gets.split.map(&:to_i)

count = 0
0.upto(n - 3) do |i|
  if p[i + 1] != p[i, 3].min && p[i + 1] != p[i, 3].max
    count += 1
  end
end

puts count