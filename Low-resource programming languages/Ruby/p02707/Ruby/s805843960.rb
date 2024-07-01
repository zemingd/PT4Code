n = gets.chomp.to_i
ids = gets.chomp.split(' ').map(&:to_i)

for i in 1..n do
  arr = ids.select { |n| n == i }
  p arr.count
end
