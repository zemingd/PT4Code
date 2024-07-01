x,k,d=gets.split.map &:to_i
# 最小となる絶対値は、x<i*d以降変わらない。
# kが偶数か奇数か
=begin
while i <= k
  tmp = (x-k*i*d).abs
  if t.include?(tmp) || t.any?{ |i| tmp > i } || k <= 0
    t << tmp
    puts t.min
    break
  end
  p t << tmp
  kd = (k * d)
end
=end

t = []
k.times do |i|
  tmp = x.dup
  x = (tmp-d).abs > (tmp+d).abs ? x+d : x-d
  break if t.include?(x.abs) && (((d%2==0) && ((i+1)%2==0)) || ((d%2!=0) && ((i+1)%2!=0)))
  t << x.abs
end
puts x.abs
