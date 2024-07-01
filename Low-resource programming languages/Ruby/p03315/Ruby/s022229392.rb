chars = gets().chomp.split('')

res = 0
chars.each do |c|
  res += 1 if c == '+'
  res -= 1 if c == '-'
end

puts res