N, M = gets.split.map(&:to_i)
W = M.times.map{ gets.split.map(&:to_i) }.sort_by(&:last)
total = 0
W.inject(-1) do |prev, w|
  if w[0] > prev 
    total += 1
    w[1] - 1
  else
    prev
  end
end
puts total
