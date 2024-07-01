# frozen_string_literal: true

N = gets.to_i

# 1..N-1 の合計
if (N % 2).zero?
  puts ((N - 1) * (N - 2) / 2) + N - 1
else
  puts N * (N - 1) / 2
end
