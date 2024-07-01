n,k,q=gets.split.map(&:to_i)
l = [0] * n
q.times do
  l[gets.to_i-1] += 1
end
n.times do |i|
  puts l[i]>q-k ? :Yes : :No
end
