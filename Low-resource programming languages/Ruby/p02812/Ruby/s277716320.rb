X = gets.to_i
s = gets.chomp

count = 0
while n = s.index("ABC") do
  s.slice!(n + 1, 3)
  count += 1
end
puts count
