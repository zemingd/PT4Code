n, k, q = gets.split.map(&:to_i)
p = Array.new(n, 0)

q.times do
  p[gets.to_i - 1] += 1
end

n.times do |i|
  if k - q + p[i] > 0
    puts 'Yes'
  else
    puts 'No'
  end
end
