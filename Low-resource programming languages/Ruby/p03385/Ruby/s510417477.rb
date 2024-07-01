s = gets().chomp.to_s

puts s.include?('a') && s.include?('b') && s.include?('c') ? 'Yes' : 'No'