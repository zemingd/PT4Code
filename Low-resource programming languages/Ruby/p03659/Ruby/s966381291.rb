n = gets.to_i
a = gets.split.map &:to_i;
total = a.inject(:+)
x = 0;  y = total - x;  res = total.abs
n.times {|i|
  x += a[i];  y = total - x
  res = ((x-y).abs < res ? (x-y).abs : res)
}
puts res
