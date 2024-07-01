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
    elsif a[i] > b[j]
      sum_time += b[j]
      break if sum_time > k
      j += 1
      ans += 1
    else
      i2 = i
      j2 = j

      while a[i2] == b[j2]
        i2 += 1
        j2 += 1
        break if i2 == n || j2 == m
      end
      if i2 == n
        sum_time += b[j]
        break if sum_time > k
        j += 1
        ans += 1
      elsif j2 == m
        sum_time += a[i]
        break if sum_time > k
        i += 1
        ans += 1
      else
        if a[i2] < b[j2]
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
  end
end

puts ans
