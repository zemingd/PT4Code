s = gets.chomp
k = gets.to_i

puts s[0...k].match(/1{#{[k, s.length].min}}/) ? s[0] : s[k-1]