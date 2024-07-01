

n = gets.to_i

c = 0

for d in 3..(n.to_s.length) do
  [7, 5, 3].repeated_permutation(d).to_a.uniq() do |num|
    c += 1 if num.include?(3) && num.include?(5) && num.include?(7) && num.join.to_i < n

  end
end

p c