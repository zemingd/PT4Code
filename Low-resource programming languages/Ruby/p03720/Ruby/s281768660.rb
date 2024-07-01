n,m = gets.strip.split.map(&:to_i)
rec = Array.new(n){Array.new(n,0)}
m.times do
  a,b = gets.strip.split.map(&:to_i)
  if rec[a-1][b-1] == 0
    rec[a-1][b-1] += 1
  end
  if rec[b-1][a-1] == 0
    rec[b-1][a-1] += 1
  end
end
for i in 0..n-1
  puts rec[i].sum
end