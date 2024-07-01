gets.to_i.times do |n|
  print " #{n+1}" if (n+1) % 3 == 0 || (n+1).to_s =~ /3/
end
puts