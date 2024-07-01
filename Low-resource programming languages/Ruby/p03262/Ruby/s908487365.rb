(n, s), xs = gets.chomp.split.map(&:to_i), gets.chomp.split.map(&:to_i)
p xs.map{|x| (x-s).abs }.inject{|a,b| a.gcd(b)}