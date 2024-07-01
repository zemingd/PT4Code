s = gets.chomp.split('').sort.join
t = gets.chomp.split('').reverse.join

puts s < t ? 'Yes' : 'No'