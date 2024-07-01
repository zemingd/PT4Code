n = gets.to_i
ab = n.times.map{|_| gets.split.map(&:to_i)}.sort_by{|x, y| y}

t = 0
ab.each do |a,b|
  t += a
  if t > b
    print "No\n"
    exit
  end
end
print "Yes\n"