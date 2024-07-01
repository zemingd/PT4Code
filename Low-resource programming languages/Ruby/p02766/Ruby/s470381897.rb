n, k = gets.split(" ").map(&:to_i)
puts (Math::log10(n) / Math::log10(k) + 1).floor