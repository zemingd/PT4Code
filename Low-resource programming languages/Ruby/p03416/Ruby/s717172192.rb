a,b=gets.split.map(&:to_s)
ary=[]
(a..b).each do |i|
  ary << i if i.reverse == i
end
puts ary.size