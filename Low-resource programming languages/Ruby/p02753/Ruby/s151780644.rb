s = gets().chomp

puts s.split('').uniq.length == 1 ? 'No' : 'Yes'