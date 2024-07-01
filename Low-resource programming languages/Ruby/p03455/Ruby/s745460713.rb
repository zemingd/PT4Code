a, b = STDIN.readline.chomp.split(' ').map(&:to_i)
puts (a.even? || b.even?) ? "Even" : "Odd"
