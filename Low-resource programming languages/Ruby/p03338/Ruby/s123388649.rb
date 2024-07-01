num = gets.to_i
a = gets

ary = (1..num).map do |n|
  x,y = a.split(/\A(.{1,#{n}})/, 2)[1..-1]
  (x.split("") & y.split("")).size
end

p ary.max