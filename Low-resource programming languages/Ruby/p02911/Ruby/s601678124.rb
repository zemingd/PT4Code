n, k, q = gets.chomp.split.map(&:to_i)
point = Array.new(n, k-q)
q.times do
  a = gets.chomp.to_i - 1
  point[a] += 1
end

n.times do |i|
  if point[i] > 0
    puts('Yes')
  else
    puts('No')
  end
end