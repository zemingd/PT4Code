a=gets.chomp.split(" ").map(&:to_i).sort!
puts 10*a[2]+a[1]+a[0]