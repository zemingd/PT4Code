s=gets.split("")
0.upto(2){|i| puts "Bad"||exit if s[i].eql?(s[i+1])}
puts "Good"