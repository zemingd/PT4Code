s = gets.chomp
a = 0
n = s.length
for i in 0..n-1
  if s[i] == "0"
    a += 1
  end
end
puts 2 * [a, n-a].min