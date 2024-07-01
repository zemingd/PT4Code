n = gets.chomp.to_i
ary = []

for x in 1..n
  ary.push(x)
end

password = ary.repeated_permutation(3).to_a
puts password.count
