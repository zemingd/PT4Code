# frozen_string_literal: true

n, m = gets.split.map(&:to_i)
a = Array.new(m) { gets.to_i }
f = [0, 1]
skip = a.shift

1.upto(n) do |i|
  if i == skip
    f << 0
    skip = a.shift
    next
  end
  f << (f[i] + f[i - 1]) % 1_000_000_007
end

puts f[-1]