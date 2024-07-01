h, w = gets.split.map(&:to_i)

puts h/2 * w + (h%2) * (w+1)/2
