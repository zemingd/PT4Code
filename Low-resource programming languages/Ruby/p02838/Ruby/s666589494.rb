# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
o = []

MOD = 10**9 + 7
60.times do |b|
  count = 0
  x = 2**b
  n.times do |i|
    count += 1 if a[i].odd?
    a[i] >>= 1
  end
  o.push count
end

sum = 0
60.times do |b|
  sum += (o[b] * (n - o[b])) * 2**b
end

puts sum % MOD
