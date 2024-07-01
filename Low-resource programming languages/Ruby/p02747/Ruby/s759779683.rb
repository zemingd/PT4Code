s = gets.strip
puts s.gsub(/hi/, '').size == 0 ? 'Yes' : 'No'