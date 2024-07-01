x = gets
y = x.to_i
until y == 0
 sum = 0
 zz = x.split("")
 z = zz.map{|s| s.to_i}
 z.each do |a|
  sum += a
 end
 puts sum
x = gets
y = x.to_i
end
