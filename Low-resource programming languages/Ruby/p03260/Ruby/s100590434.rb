a, b = $stdin.read.split.map(&:to_i)
puts a * b % 2 == 1 ? 'Yes' : 'No'
