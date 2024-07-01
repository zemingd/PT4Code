gets
a=gets.split.map(&:to_i).sort_by{|i|i.abs}
b=a.map &:abs
x,y=a.pop(2)
a.size.times do |i|
  if (x<y)^(a[-1]<0)
    x+=a.pop
  else
    y+=a.pop
  end
end
p (x-y).abs
