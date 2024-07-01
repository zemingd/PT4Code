n = gets.to_i
p = gets.split("\s").map(&:to_i)
p_sorted = p.sort
count = 0

n.times do |i|
  if p[i] != p_sorted[i]
    count += 1
  end
end

print count <= 2 ? 'YES' : 'NO'
