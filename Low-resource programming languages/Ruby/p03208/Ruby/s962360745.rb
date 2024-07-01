N,K =gets.split.map(&:to_i)
array =[]
N.times do
  array << gets.to_i
end
array.sort!
min = -array[0] + array[-1]
(N+1-K).times do |i|
  d = -array[i]+array[i+K-1]
  min = d if min > d
end
puts min
