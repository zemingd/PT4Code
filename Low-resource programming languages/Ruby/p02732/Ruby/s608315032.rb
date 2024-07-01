# frozen_string_literal: true

def c_count(n)
  n * (n - 1) / 2
end

n = gets.to_i
a = gets.split.map(&:to_i)

a_count = Array.new(n, 0)
a.each do |x|
  a_count[x - 1] += 1
end
a_sum = a_count.inject(0) do |r, x|
  r + c_count(x)
end
n.times do |i|
  before = c_count(a_count[a[i] - 1])
  after = c_count(a_count[a[i] - 1] - 1)
  puts a_sum - before + after
end
