y,m,d = gets.split("/").map(&:to_i)
puts (y >= 2019 and m >= 5) ? "TBD" : "Heisei"