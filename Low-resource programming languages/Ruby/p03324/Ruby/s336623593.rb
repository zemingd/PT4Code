d, n = gets.chomp.split.map(&:to_i)
a = 100**d * n
if [1, 100, 100**3].include?(a)
  puts a + 100**d
else
  puts a
end
