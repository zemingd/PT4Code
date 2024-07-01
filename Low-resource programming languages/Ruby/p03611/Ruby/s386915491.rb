N = gets.strip.to_i
a = gets.strip.split(' ').map(&:to_i)
l = 0
m = 0
q = 0
numbe = []
x = []
num = 1

a.each do |c|
  x = a.select{ |n| (c-1-n).abs <= 1}
  l = x.size
  x = a.select{ |n| (c-n).abs <= 1}
  m = x.size
  x = a.select{ |n| (c+1-n).abs <= 1}
  q = x.size
  numbe[num-1] = l
  numbe[num] = m
  numbe[num+1] = q
  num = num + 3
end
p numbe.max