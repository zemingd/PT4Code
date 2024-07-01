n = gets.to_i

backet = {}
n.times do |i|
  backet[i+1] = gets.to_i
end

idx = 1
count = 0
loop do
  idx = backet[idx]
  count += 1
  break if idx == 2

  if count > n
    count = -1
    break
  end
end

puts count
