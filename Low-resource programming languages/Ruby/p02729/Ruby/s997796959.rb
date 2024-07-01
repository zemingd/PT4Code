a,b = gets.strip.split.map(&:to_i)

puts (a*(a-1)/2) + (b*(b-1)/2)