a, b, c = gets.split.map(&:to_i)
count = 0
for i in 1..c do
  count += 1 if c % i == 0 and (a..b).include?(i)
end
puts count