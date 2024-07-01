S = gets.chomp
N = S.to_i
digits_sum = S.chars.map(&:to_i).inject(:+)
puts N % digits_sum == 0 ? "Yes" : "No"