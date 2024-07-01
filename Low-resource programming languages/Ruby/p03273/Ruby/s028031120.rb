#転置はすごい！！！
h,w = gets.strip.split.map(&:to_i)
ary = []
h.times do
  a = gets.strip.to_s
  b = a.split("").map(&:to_s)
  unless b.all?(".")
    ary << b
  end
end
arys = ary.transpose
arys.each do |x|
  if x.all?(".")
    arys.delete(x)
  end
end
newary = arys.transpose
newary.each do |x|
  puts x.join("")
end