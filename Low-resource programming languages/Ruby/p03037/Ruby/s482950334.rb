N, M = gets.chomp.split(" ").map(&:to_i)

li = []
ri = []

for i in 0...M do
  l, r = gets.chomp.split(" ").map(&:to_i)
  li[i] = l
  ri[i] = r
end

if (ri.min - li.max) >= 1 then
  puts ri.min - li.max
else
  puts 0
end
