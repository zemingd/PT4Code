s=gets.chomp.split('')
puts (3.times.map{|i|s[i]==s[i+1]}).any? ? "Bad" : "Good"