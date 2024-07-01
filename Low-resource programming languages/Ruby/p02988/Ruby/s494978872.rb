n = gets.chomp.to_i
p = gets.chomp.split(' ').map(&:to_i)
count = 0
(n-2).times do |i|
  if (p[i..(i+2)].sort[1] == p[i+1])
    count += 1
  end
end
puts count