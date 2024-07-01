ss,ts = 2.times.map{gets.chomp.chars}
count = 0
ss.zip(ts){|s,t| count += 1 if s == t}
puts count