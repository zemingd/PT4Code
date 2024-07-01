n = gets().chomp

found = false
n.split('').each do |x|
  found = true if x.to_i == 7
end

puts found == true ? 'Yes' : 'No'