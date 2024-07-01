# frozen_string_literal: true

N = gets.to_i
H = gets.split.map(&:to_i)

count = 0
max = 0

(N - 1).times do |i|
  if H[i] < H[i + 1]
    max = count if max < count
    count = 0
  else
    count += 1
  end
end

puts count