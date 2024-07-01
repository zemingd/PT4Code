s = gets.chomp.split('').map(&:to_i)
num = s[0,3]
n = s.size
i = 3

min = (753 - num.join('').to_i).abs
while i < n
  num.shift
  num << s[i]
  min = (num.join('').to_i - 753).abs if min >= (num.join('').to_i - 753).abs
  i += 1
end
puts min