N, M = gets.chomp.split(" ").map(&:to_i)

foods = Array.new(M+1, 0)
N.times do
  k, *a = gets.chomp.split(" ").map(&:to_i)
  a.each do |x|
    foods[x] += 1
  end
end
ans = 0
foods.each do |x|
  if x == N
    ans += 1
  end
end

puts ans
