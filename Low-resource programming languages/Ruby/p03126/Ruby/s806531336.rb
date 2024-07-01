n, m = gets.split.map(&:to_i)
ans = []
count = 0
n.times do
  ans.concat(gets.split.map(&:to_i)[1..-1])
end

(1..m).each do |i|
  if ans.count(i) == n
    count += 1
  end
end
puts count