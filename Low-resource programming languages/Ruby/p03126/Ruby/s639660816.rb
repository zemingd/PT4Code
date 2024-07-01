n,m = gets.split.map(&:to_i)
result = Array.new(m, 0)
n.times do
  gets.split.map(&:to_i).drop(1).each { |mm| result[mm-1] += 1 }
end
puts result.count { |mm| mm == n }