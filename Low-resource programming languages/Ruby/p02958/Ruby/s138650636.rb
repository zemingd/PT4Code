n=gets.to_i

while p1 = $stdin.gets do
  p = p1.chomp.split(" ")
end

p_sort = p.sort
cange = p.map.with_index { |p, index| p if p != p_sort[index] }

if cange.compact!.size == 2 || cange.compact!.size == 0
  puts 'NO'
else
  puts 'YES'
end