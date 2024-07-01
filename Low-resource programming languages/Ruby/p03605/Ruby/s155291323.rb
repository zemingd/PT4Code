s = gets().chomp.to_s.split('').map{|x| x.to_i}

puts s.include?(9) ? 'Yes' : 'No'