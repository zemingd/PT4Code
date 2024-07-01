time = gets.chomp.split(" ").map(&:to_i)

time.sort!

puts time[0]+time[1]
