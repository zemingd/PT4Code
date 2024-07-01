n, m = gets.chomp.split.map(&:to_i)
li = []
ri = []
for i in 0...m do
  l, r = gets.chomp.split.map(&:to_i)
  li << l
  ri << r
end
if (ri.min - li.max) >= 0 then
  puts ri.min - li.max + 1
else
  puts 0
end