n = gets.to_i

array = Array.new

for i in 1..n
    array.push(i)
end

p array.repeated_permutation(3).to_a.length