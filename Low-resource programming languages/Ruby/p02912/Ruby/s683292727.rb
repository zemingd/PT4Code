input = gets.to_s.split(" ").map(&:to_i)
value_A = gets.to_s.split(" ").map(&:to_i)

sina_kosu = input[0]
waribiki = input[1]

new_value = 0
index = 0
sum = 0
for i in 0..waribiki-1 do
  index = value_A.index(value_A.max)
  new_value = value_A[index] / 2
  value_A.delete_at(index)
  value_A.push(new_value)
end

value_A.each { |i| sum += i }

puts sum