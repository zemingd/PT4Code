n = gets.chomp.to_i
s = gets.chomp
puts s.slice(0...(n / 2)) == s.slice((n / 2)...n) ? 'Yes' : 'No'