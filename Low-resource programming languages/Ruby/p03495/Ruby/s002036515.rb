n, goal = gets.split.map(&:to_i)
balls   = gets.split.map(&:to_i)
count   ={}

balls.each do |b|
  if count[b] == nil
    count[b]  = 1
  else
    count[b] += 1
  end
end

count = count.sort_by{|c| c[1]}
ans   = 0

(count.size - goal).times do |i|
  ans += count[i][1]
end

puts ans
