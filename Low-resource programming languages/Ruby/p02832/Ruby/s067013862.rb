# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
c = 1

n.times do |i|
  if a[i] == c
    c += 1
  else
    count += 1
  end
end

if count == n
  count = -1
end
puts count
