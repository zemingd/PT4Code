a, b, c = gets.chomp.split(" ").map(&:to_i)
count = 0
(a..b).each do |n|
  count += 1 if c % n == 0
end
puts count