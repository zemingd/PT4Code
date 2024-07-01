n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)

result = 0

(a << 0).each_cons 2 do |i, j|
  result += b[i-1]
  result += c[i-1] if j - i == 1
end

puts result