n, k = gets.split(" ").map(&:to_i)
if k >= n then puts 0; return end
hps = gets.split(" ").map(&:to_i).sort!.reverse!
puts hps[k, hps.size].inject(0){|s, n| s + n}