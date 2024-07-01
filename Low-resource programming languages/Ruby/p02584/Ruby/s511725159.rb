# frozen_string_literal: true

x, k, d = gets.split.map(&:to_i)

k1 = -x / d
k2 = k1 - 1
k3 = k1 + 1

km = [k1, k2, k3].sort_by { |e| (x + e * d).abs }.filter { |e| e % 2 == k % 2 }[0]

if k < km.abs
  if km < 0
    km = -k
  else
    km = k
  end
end
puts (x + km * d).abs
