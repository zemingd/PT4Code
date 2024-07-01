s = gets.split('').map(&:to_i)
num = s[0,3]
n = s.size
i = 3
min = (753 - num.join('').to_i).abs
while i < n
  num.shift
  num << s[i]
  min = (753 - num.join('').to_i).abs if min > (753 - num.join('').to_i).abs
  i += 1
end
p min