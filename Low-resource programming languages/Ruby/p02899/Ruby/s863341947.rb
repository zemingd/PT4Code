n = gets.to_i
a = gets.split.map(&:to_i)
n.times do |i|
  a[i] = [a[i],i]
end
a.sort!
n.times do |i|
  print "#{a[i][1]+1} "
end