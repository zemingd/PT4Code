a, b, c = gets.chomp.split(" ").map(&:to_i)
cnt = 0
(a..b).each do |num|
  cnt += 1 if c % num == 0
end
puts cnt