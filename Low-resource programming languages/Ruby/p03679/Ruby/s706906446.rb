X, A, B = gets.chomp.split(" ").map(&:to_i)

puts A-B >= 0 ? 'delicious' : (B-A <= X ? 'safe' : 'dangerous')
