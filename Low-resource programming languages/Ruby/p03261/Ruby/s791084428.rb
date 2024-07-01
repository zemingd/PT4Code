n = gets.to_i
ary = []
n.times do |i|
  ary[i] = gets.chomp
end
result = "Yes"
i = 1
for i in 1..n-1
  if ary[i].slice(0) != ary[i-1].slice(-1) || ary.uniq.size != ary.size
    result = "No"
    break
  end
end
puts result
