s = gets.chomp.split('').sort{|a, b| a <=> b}.join
t = gets.chomp.split('').sort{|a, b| b <=> a}.join

puts ((s < t) ? 'Yes' : 'No')