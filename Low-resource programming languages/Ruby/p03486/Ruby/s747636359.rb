s = gets.chomp.split('').sort
t = gets.chomp.split('').sort.reverse
puts s<t ? "Yes" : "No"