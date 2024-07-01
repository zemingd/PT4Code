N, M = gets.split(' ').map(&:to_i)

foods = Array.new(M + 1, 0)
N.times do
  a = gets.split(' ').map(&:to_i)
  1.upto(a[0]) do |i|
    foods[a[i]] += 1
  end
end

puts foods.count(N)