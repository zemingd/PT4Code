# frozen_string_literal: true

n = gets.to_i
h = gets.split.map(&:to_i)

max = 0
count = 0

1.upto(n - 1) do |i|
  if h[i - 1] >= h[i]
    count += 1
    max = count if max < count
  else
    count = 0
  end
end

puts max
