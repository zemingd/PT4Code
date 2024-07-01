n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
k = 1000000000000000000
r = 1
a.each do |num|
  if (r > k)
    puts '-1'
    exit
  end
  r *= num
end
puts r > k ? '-1' : r