n=gets.to_i
p=gets.split.map &:to_i

answer = 0

n.times do |i|
  next if i == 0 || i == n - 1
  answer += 1 if (p[i+1] > p[i] && p[i-1] < p[i]) || (p[i+1] < p[i] && p[i-1] > p[i])
end

puts answer
