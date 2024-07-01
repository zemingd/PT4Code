n = gets().chomp

res = ''
n.split('').each do |num|
  res += num == '1' ? '9' : '1'
end

puts res
