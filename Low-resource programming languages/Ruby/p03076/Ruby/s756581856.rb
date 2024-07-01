ts = []
l = []
5.times do
  ts << gets.to_i
end
ts.each do |t|
  if t%10 == 0
    l << 0
  else
    l << 10 - t%10
  end
end

p ts.inject(:+) + l.inject(:+) - l.max