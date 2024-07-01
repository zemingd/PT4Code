N = gets.to_i
W = N.times.map{gets.chomp}
if W.uniq.size == W.size && W.each_cons(2).all?{|a,b| a[-1] == b[0] }
  puts "Yes"
else
  puts "No"
end
