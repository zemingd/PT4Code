#!/usr/bin/env ruby
N = gets.to_i
P = gets.chomp.split.map(&:to_i)

del = []
P.sort!
(0...N).each do |i|
  if P[i] == 0
    next
  end
  tmp = P[i]

  if i != (N-1) && tmp == P[i+1]
    j = i + 1
    while tmp == P[j]
      P[j] = 0
      j += 1
    end
    P[i] = 0
    del.push(tmp)
  end
end

P.sort!
idx = P.find_index {|i| i > 0}
if idx != nil
  del.each do |i|
    (idx...N).each do |j|
      if P[j] % i == 0
        P[j] = 0
      end
    end
  end
end

P.sort!
idx = P.find_index {|i| i > 0}
result = 0
if idx != nil
  (idx...N).each do |i|
    if P[i] == 0
      next
    end
    tmp = P[i]

    ((i+1)...N).each do |j|
      if P[j] == 0
        next
      end
      if (P[j] % tmp) == 0
        P[j] = 0
      end
    end
    result += 1 if P[i] != 0
  end
end
puts result

