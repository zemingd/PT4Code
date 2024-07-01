n = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = 0

a.sort!

c = 0
a.reverse.each do |i|
  break if c == n[1]
  result += i
  c += 1
end

puts result
