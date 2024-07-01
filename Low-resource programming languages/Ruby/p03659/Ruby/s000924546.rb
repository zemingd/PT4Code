gets
a=gets.split.map(&:to_i).sort_by{|i|i.abs}
x,y=a.pop(2)
a.size.times do |i|
  if x<y
    x+=a.pop
  else
    y+=a.pop
  end
end
p (x-y).abs
