ts = []
l = []
5.times { ts << gets.to_i }
ts.each do |t|
  if t%10 == 0
    l << 0
  else
    l << 10 - t%10
  end
end

p ts.sum + l.sum - l.max
