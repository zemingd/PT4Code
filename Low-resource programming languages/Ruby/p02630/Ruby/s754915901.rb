n = gets.to_i

sum = 0
counter = Hash.new { |h, k| h[k] = 0 }
gets.split.map(&:to_i).each do |a|
  sum += a
  counter[a] += 1
end

q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)

  sum += counter[b] * (c - b)
  puts sum
  
  counter[c] += counter[b]
  counter[b] = 0
end
