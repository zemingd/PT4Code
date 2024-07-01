n = gets.to_i
ary = gets.split(" ").map(&:to_i)

sum = 1
tmp = ary[0]
(n-1).times do |i|
  if ary[i+1] >= tmp
    sum += 1
    tmp = ary[i+1]
  end
end

puts sum