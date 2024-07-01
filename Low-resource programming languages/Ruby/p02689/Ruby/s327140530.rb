n, m = gets.split.map(&:to_i)
arr = gets.split.map(&:to_i)

arr = Array.new(n+1, true)
arr[0] = false
m.times do
  a, b = gets.split.map(&:to_i)
  arr[[a, b].min] = false
end

puts arr.select{|a| a}.count