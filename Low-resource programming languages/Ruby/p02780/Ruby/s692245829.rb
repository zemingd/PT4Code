n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

exps = ps.map do |v|
  v * 0.5 + 0.5
end

max = 0
max_cons = nil

i = 0
j = k
while j <= ps.size do
  v = exps[i...j]
  sum = v.reduce(:+)
  if sum > max
    max = sum
    max_cons = v
  end
  i += 1
  j += 1
end

puts max