n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

max_sum = 0
ans = 0
max_lcm = 0

max_lcm = a.inject{|lcm, n| lcm.lcm(n)}

(1..a.max*10000).each do |m|
  # puts
  # puts m
  sum = 0
  a.each do |i|
    # puts "#{m} #{i} #{m % i}"
    sum += m % i
  end
  # puts sum
  if sum > max_sum
    max_sum = sum
    ans = m
  end
end

puts max_sum
# puts ans
