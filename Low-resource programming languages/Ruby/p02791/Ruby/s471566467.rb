require 'set'; require 'prime'
INF=Float::INFINITY
n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)

mini = INF
ans = []
n.times do |i|
  if p[i] <= mini
    ans.push(i + 1)
    mini= p[i]
  end
end

puts ans.count



