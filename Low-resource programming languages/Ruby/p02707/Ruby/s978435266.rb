# array = [*1..q].map { |_| gets.split.map(&:to_i) }
# n = gets.split.map(&:to_i)
# a = [*1..m].repeated_combination(n).to_a


n = gets.to_i

a = gets.split.map(&:to_i)

n.times do |i|
  puts a.count(i+1)
end
