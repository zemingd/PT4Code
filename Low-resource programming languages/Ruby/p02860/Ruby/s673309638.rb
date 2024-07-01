n = gets.to_i
s = gets.chomp

t = s[0...(n / 2)]
puts s.gsub(t, '').empty? ? 'Yes' : 'No'
