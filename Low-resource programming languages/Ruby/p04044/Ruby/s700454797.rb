N, L = gets.split.map(&:to_i)
S = (1..N).map { |_| gets.chomp }

print S.sort.join('')
