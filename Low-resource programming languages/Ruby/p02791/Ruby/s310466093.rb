n = gets.strip.to_i
array = gets.strip.split.map(&:to_i)
res = []
sum = 0
min = 2000000
array.each do |ar|
  min = ar if min > ar
  if min == ar
    sum+= 1
  end
end
puts sum
