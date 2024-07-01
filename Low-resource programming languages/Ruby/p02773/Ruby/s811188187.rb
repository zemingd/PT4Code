n = gets.to_i
s = Array.new(n){gets.chomp}
m = s.map{|t| s.count(t) }.max
puts s.select{|t| s.count(t) == m }.uniq.sort