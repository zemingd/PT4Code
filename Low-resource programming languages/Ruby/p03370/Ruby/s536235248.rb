n, x = gets.split.map(&:to_i)
ary = []
n.times do
  ary << gets.to_i
end
sum = 0
ary.each do |i|
  sum+=i
end
count = (x-sum)/ary.min
puts count+n