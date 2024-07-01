n, m = gets.split("\s").map(&:to_i)
a = gets.split("\s").map(&:to_i).sort
result = 0
i = 0

if n < 2
  a[0] = a[0] / (2**m)
else
  loop do
    while a[-1] >= a[-2]
      a[-1] /= 2
      i += 1
      break if i >= m
    end
    while a[-2] >= a[-3] && n >= 3
      a[-2] /= 2
      i += 1
      break if i >= m
    end
    while a[-3] >= a[-4] && n >= 4
      a[-3] /= 2
      i += 1
      break if i >= m
    end
    while a[-4] >= a[-5] && n >= 5
      a[-4] /= 2
      i += 1
      break if i >= m
    end
    while a[-5] >= a[-6] && n >= 6
      a[-5] /= 2
      i += 1
      break if i >= m
    end
    break if i >= m
    a.sort!
  end
end

n.times do |i|
  result += a[i]
end

puts result
