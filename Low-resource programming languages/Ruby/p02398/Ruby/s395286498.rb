a, b, c = gets.chomp.split.map(&:to_i)
cnt = 0
for i in a..b
  cnt += 1 if c % i == 0
end
puts cnt