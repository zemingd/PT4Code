n,k,q=gets.split.map(&:to_i)
l = [k-q] * n
q.times do
  l[gets.to_i-1] += 1
end
n.times do |i|
  puts l[i]>0 ? :Yes : :No
end
p l