n = gets.to_i
a = gets.split.map &:to_i;
total = a.inject(:+)
x = 0;  y = total;  res = 10**9 * 2
0.upto(n-2) {|i|
  x += a[i];  y = total - x
  res = ((x-y).abs < res ? (x-y).abs : res)
}
puts res
