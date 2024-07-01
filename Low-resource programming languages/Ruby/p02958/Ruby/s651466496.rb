n = gets.chomp.to_i
ar = gets.split.map(&:to_i)
ars = ar.sort
count = 0
n.times do |i|
  count += 1 if ar[i] != ars[i]
end
if count <= 2
  puts 'YES'
else
  puts 'NO'
end
