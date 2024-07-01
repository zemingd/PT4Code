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
    a.sort!
    break if i >= m
  end
end

n.times do |i|
  result += a[i]
end

puts result