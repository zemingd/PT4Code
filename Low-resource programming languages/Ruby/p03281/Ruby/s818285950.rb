#!/usr/bin/env ruby

n = gets.chomp.to_i

def calc(num)
  r = 0
  (105..num).each do |i|
    a = []
    if (i % 2 == 0)
      next
    end

    (1..num).each do |j|
      if (i % j == 0)
        a << j
      end
    end
    if (a.size == 8)
      r += 1
      a = []
    end
  end
  return r
end

if (n > 105)
  result = calc(n)
elsif (n == 105)
  result = 1
else
  result = 0
end

puts result