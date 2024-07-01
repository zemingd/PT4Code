n = gets.to_i
array = gets.chop.split.map(&:to_i)

count = 0
ary = []

array.each do |num|
  ary.push(num)
  if ary.min >= num
    count += 1
  end
end

puts count