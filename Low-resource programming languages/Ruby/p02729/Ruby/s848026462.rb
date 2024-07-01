a,b = gets.split().map(&:to_i)
arr = []
arr2 = []
a.times do|i|
  arr<<i*2
end

b.times do|i|
  arr2<<i+1
end
ans = 0
arr.combination(2) do |a, b|
  ans += 1
end
arr2.combination(2) do |a, b|
  ans += 1
end
puts ans


