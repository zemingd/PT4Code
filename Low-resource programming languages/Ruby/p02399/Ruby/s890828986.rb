a,b = gets.chomp.split(" ").map(&:to_i)
printf "%d %d %.5f",a/b,a%b,a/b.to_f