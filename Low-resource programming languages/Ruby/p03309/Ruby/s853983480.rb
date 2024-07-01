_ = gets.to_i
as = gets.split(" ").map(&:to_i)

hoge = []
as.each_with_index do |a,i|
  hoge << a - (i+1)
end
hoge.sort!


if hoge.size.odd?
  b = hoge[hoge.size/2]
else
  i = hoge.size/2
  b = (hoge[i-1] + hoge[i]) / 2
end

ans = 0
as.each_with_index do |a,i|
  ans += (a - (b+i+1)).abs
end

puts ans