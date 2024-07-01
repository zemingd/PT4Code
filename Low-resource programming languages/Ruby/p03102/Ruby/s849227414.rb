N,M,C = gets.chomp.split(' ').map{|n| n.to_i}
B = gets.chomp.split(' ').map{|n| n.to_i}
over_zero = 0
N.times.each do |n|
  total = 0
  a = gets.chomp.split(' ').map{|n| n.to_i}
  count = 0
  a.each do |i|
    total += i * B[count]
    count += 1
  end
  over_zero += 1 if (total + C) > 0
end
puts over_zero