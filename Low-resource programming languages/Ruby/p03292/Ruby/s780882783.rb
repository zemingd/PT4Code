a = gets.split.map{|s|s.to_i}.sort

t1 = t2 = 0

3.times do |i|
  t1 += (a[i-1]- a[i]).abs if i != 0
  t2 += (a[-i] - a[-(i+1)]).abs if i != 0
end

puts [t1, t2].min