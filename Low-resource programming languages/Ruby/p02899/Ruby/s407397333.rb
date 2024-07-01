n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(n).map{Array.new}
n.times do |i|
  b[i] = [a[i],i]
end
b = b.sort{|x,y| x[0] <=> y[0]}
b.each do |x|
  print "#{x[1]+1} "
end
