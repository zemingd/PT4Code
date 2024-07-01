n=gets.to_i

while p1 = $stdin.gets do
  p = p1.chomp.split(" ")
end

cange = []
p.zip(p.sort) do |p, p_sort|
  cange << p if p != p_sort
end

if cange.size > 2
  puts 'NO'
else
  puts 'YES'
end
