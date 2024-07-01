n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

max = 0
max_cons = nil

i = 0
j = k
while j <= ps.size do
  v = ps[i...j]
  sum = v.reduce(:+)
  if sum > max
    max = sum
    max_cons = v
  end
  i += 1
  j += 1
end

exp = 0

max_cons.each do |v|
  exp += (1..v).reduce(:+) / Float(v)
end

puts exp