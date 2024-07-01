n,l = gets.chomp.split(" ").map(&:to_i)
s = n.times.map{gets.chomp}.sort
t = ""
s.each do |str|
  t += str
end
puts t