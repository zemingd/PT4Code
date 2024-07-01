n = gets.chomp.to_i
d_ary = gets.chomp.split.map(&:to_i)
answer = 0

i = 0
n.times do
  d_soreigai_ary = d_ary.sum - d_ary[i]
  answer += d_ary[i]*d_soreigai_ary/2.0
  i += 1
end

p answer.floor
