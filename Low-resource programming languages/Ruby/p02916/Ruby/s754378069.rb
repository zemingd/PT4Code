N = gets.to_i
as, bs, cs = 3.times.map{gets.split(' ').map{|n| n.to_i}}
sum, prev = 0, 0
as.each do |a|
  sum += bs[a - 1]
  if a == prev + 1 
    sum += cs[a - 2] 
  end
  prev = a
end
p sum