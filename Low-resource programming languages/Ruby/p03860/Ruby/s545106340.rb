n = gets.chomp.split(" ")
c = n[1].chars.map(&:to_s)

puts "A" + c[0].upcase + "C"