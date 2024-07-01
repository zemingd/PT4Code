n = gets.chomp.to_i
s = gets.chomp

result = 1
b = s[0]
(n-1).times do |i|
  if (b != s[i+1])
    result += 1
  end
  b = s[i+1]
end

puts result
