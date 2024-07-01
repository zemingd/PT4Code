a, b, c = gets.split.map(&:to_i)
puts (1..b).map{|i| (a*i)%b}.include?(c) ? "YES" : "NO"