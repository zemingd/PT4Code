t, x = gets.chomp!.split(" ").map(&:to_i)

puts sprintf("%.10f", (t.to_f / x.to_f))
