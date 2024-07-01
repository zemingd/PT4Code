n, m = gets.split.map &:to_i
foods = [0] * m
n.times do
  k, *as = gets.split.map &:to_i
  as.each do |i|
    foods[i-1] += 1
  end
end

p (foods.count { |x| x == n })