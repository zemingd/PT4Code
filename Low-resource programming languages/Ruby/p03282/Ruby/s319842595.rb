s = gets.chomp
k = gets.to_i
 
puts s[0...k] =~ /1{#{[k, s.length].min}}/ ? "1" : s.match(/[^1]/)