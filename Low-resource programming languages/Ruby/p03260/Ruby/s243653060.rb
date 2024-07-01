a, b = STDIN.read.split.map(&:to_i)

puts (a * b).odd? ? 'Yes' : 'No'