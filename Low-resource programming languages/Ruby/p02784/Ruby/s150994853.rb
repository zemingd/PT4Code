H, N = gets.split.map(&:to_i)
hissatu = gets.split.map(&:to_i).sum

puts (H <= hissatu) ? "Yes" : "No"