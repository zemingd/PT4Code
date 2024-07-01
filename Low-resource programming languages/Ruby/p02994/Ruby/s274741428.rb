a,b=gets.split.map(&:to_i)
z=Float::INFINITY
l=[*b..b+a-1]
l.each do |i|
  if z.abs>i.abs
    z=i
  end
end
p l.sum-z