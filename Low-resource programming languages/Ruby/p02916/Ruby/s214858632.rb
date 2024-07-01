nn = gets.to_i
aa = gets.split.map(&:to_i)
bb = gets.split.map(&:to_i)
cc = gets.split.map(&:to_i)

sum = 0
prev = 100

nn.times do |n|
  num = aa[n]
  sat = bb[num-1]
  sat += cc[prev-1] if prev+1==num
  sum += sat
  prev = num
end

puts sum