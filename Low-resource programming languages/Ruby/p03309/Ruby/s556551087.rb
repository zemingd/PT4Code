def k(ary, b)
  sum = 0
  ary.each_with_index do |a, i|
    # a - i - 1 = b
    sum += (a - (b + i + 1)).abs
  end
  sum.to_i
end

n=STDIN.gets.to_i
a = STDIN.gets.split(' ').map(&:to_i)
b = []

a.each_with_index do |a, i|
  b.push(a - i	- 1)
end
b = (b.size % 2).zero? ? b[b.size/2 - 1, 2].inject(:+) / 2.0 : b[b.size/2]


puts k(a, b)