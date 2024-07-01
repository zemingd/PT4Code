s = gets.split('').map(&:to_i)
num = s[0,3]
n = s.size
i = 1
min = (753 - num.join('').to_i).abs
while 3 + i <= n
  num.shift
  num << s[2+i]
  min = (753 - num.join('').to_i).abs if min > (753 - num.join('').to_i).abs
  i += 1
end
p min