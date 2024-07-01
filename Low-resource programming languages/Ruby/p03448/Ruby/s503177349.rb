#!/usr/bin/env ruby

gohyaku = gets.to_i
hyaku = gets.to_i
goju = gets.to_i

x = gets.to_i

def sum(a, b, c)
  a * 500 + b * 100 + c * 50
end

res = 0
(0..gohyaku).to_a.each { |a_num|
  next if x < sum(a_num, 0, 0)
  (0..hyaku).to_a.each { |b_num|
    next if x < sum(a_num, b_num, 0)
    (0..goju).to_a.each { |c_num|
      next if x < sum(a_num, b_num, c_num)
      res += 1 if x == sum(a_num, b_num, c_num)
    }
  }
}

puts res
