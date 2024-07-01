H, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.inject(0){|i, x| x + i } >= H ? 'Yes' : 'No'