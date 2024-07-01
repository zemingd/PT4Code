N = gets.strip.to_i
a = gets.strip.split(' ').map(&:to_i)
l = 0
m = 0
n = 0
numb = []
numbe = []
x = []
num = 1
a.each do |c|
  x = a.select{ |n| (c-n).abs <= 2}
  p = c - 1
  x.each do |d|
    if (d-p).abs <= 1
      l = l + 1
    end
  end
  q = c
  x.each do |d|
    if (d-q).abs <= 1
      m = m + 1
    end
  end
  r = c+1
  x.each do |d|
    if (d-r).abs <= 1
      n = n + 1
    end
  end
  numb[num-1] = p
  numb[num] = q
  numb[num+1] = r
  numbe[num-1] = l
  numbe[num] = m
  numbe[num+1] = n
  num = num + 3
  l = 0
  m = 0
  n = 0
end
p numbe.max