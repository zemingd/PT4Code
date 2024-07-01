nu1,nu2 = gets.chomp.split(" ").map(&:to_i)
array = gets.chomp.split(" ").map(&:to_i)
store = Array.new(200001, 0)
for i in 0..nu1 - 1
  store[array[i]] += 1
end
result = store.sort
ans = nu1
for i in 1..nu2
  ans -= result[-i]
end

puts ans
