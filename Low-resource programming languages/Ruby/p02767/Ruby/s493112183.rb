n = gets.to_i
min = 99999999999
ary = gets.split().map(&:to_i).sort
for x in ary[0]..ary.last do
  sum = 0
  ary.each do |a|
    y = (a - x) ** 2
    sum += y
  end
  if sum <= min
    min = sum
  end
end
puts min