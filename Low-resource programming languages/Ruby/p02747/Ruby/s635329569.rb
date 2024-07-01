s = gets.chomp

puts s.gsub('hi', '').empty? ? 'Yes' : 'No'
