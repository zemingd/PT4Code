n = gets.strip.to_i
as = n.times.map{gets.strip.to_s}
as.sort!
rh = {}
i = 1
num = 1
as.each do |a|
  if a == as[i]
    num+= 1
  else
    rh[a] = num
    num = 1
  end
    i+= 1
end
max_number =  rh.max{ |x, y| x[1] <=> y[1] }[1]

rh.each do |r|
  if max_number == r[1]
    puts r[0]
  end
end
