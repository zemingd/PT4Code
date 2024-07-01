#!/usr/bin/env ruby
n, m, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

ans = 0
sum_time = 0
i = 0
j = 0

while true
  break if i == n && j == m

  if i == n
    sum_time += b[j]
    break if sum_time > k
    j += 1
    ans += 1
  elsif j == m
    sum_time += a[i]
    break if sum_time > k
    i += 1
    ans += 1
  else
    if a[i] < b[j]
      sum_time += a[i]
      break if sum_time > k
      i += 1
      ans += 1
    else
      sum_time += b[j]
      break if sum_time > k
      j += 1
      ans += 1
    end
  end
end

puts ans
