n = gets.to_i
p_a = gets.split.map(&:to_i)
n_a = (1..n).to_a
count = 0
0.upto(n) do |i|
  count += 1 if p_a[i] != n_a[i]
end
puts count > 2 ? "No" : "Yes"