a = gets.chomp
X = a.chars.map(&:to_i).inject(&:+)
N = a.to_i
puts N % X == 0 ? 'Yes' : 'No'