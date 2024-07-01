# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
o = []
z = []

MOD = 10**9 + 7
60.times do |b|
  count = 0
  n.times do |i|
    count += 1 if (2**b & a[i]).positive?
  end
  o.push count
  z.push n - count
end

sum = 0
60.times do |b|
  sum += (o[b] * z[b]) * 2**b
end

puts sum % MOD
