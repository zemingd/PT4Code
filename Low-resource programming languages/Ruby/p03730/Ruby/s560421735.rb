a, b, c = gets.chomp.split(/ /).collect(&:to_i)
puts((0 ... b).collect{|i| a * i % b}.any?{|x| x == c} ? "YES" : "NO")