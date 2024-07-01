n = gets.to_i
h = gets.split.map(&:to_i)

count = 0

if h.any?{|x| 1<=x && x<=399}
  count += 1
end
if h.any?{|x| 400<=x && x<=799}
  count += 1
end
if h.any?{|x| 800<=x && x<=1199}
  count += 1
end
if h.any?{|x| 1200<=x && x<=1599}
  count += 1
end
if h.any?{|x| 1600<=x && x<=1999}
  count += 1
end
if h.any?{|x| 2000<=x && x<=2399}
  count += 1
end
if h.any?{|x| 2400<=x && x<=2799}
  count += 1
end
if h.any?{|x| 2800<=x && x<=3199}
  count += 1
end

count_stop = h.count{|x| x>=3200}

if n > 0
  min = 1
end

if count > 1
  min = count
end

max = count + count_stop

if max > 8
  max = 8
end

puts min.to_s + " " + max.to_s