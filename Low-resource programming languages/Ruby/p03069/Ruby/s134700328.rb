BLACK = '#'

N = gets.chomp.to_i
S = gets.chomp

# 黒の数の累積和
black_cumulative = [0]

N.times do |i|
  black_cumulative[i + 1] =
      if S[i] == BLACK
        black_cumulative[i] + 1
      else
        black_cumulative[i]
      end
end

# 白の数の累積和
white_cumulative = black_cumulative.map.with_index do |blacks, i|
  i - blacks
end

costs =
  (N + 1).times.map do |i|
    change_blacks = black_cumulative[i]
    change_whites = white_cumulative.last - white_cumulative[i]
    change_blacks + change_whites
  end

puts costs.min
