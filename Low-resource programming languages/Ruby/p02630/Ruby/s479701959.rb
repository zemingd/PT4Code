n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
q = gets.chomp.to_i
bc = []
q.times do
  bc << gets.chomp.split(' ').map(&:to_i)
end
sum = a.sum
memo = {}
a.each do |num|
  memo[num] ? memo[num] += 1 : memo[num] = 1
end

bc.each do |arr|
  b = arr[0]
  c = arr[1]
  if (memo[b])
    nanko = memo[b]
    tasu = c - b
    sum += tasu * nanko
    memo[b] = 0
    memo[c] ? memo[c] += nanko : memo[c] = nanko
    puts sum
  else
    puts sum
  end
end