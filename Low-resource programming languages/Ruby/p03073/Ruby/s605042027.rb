even = Hash.new(0)
odd = Hash.new(0)
count = 0
gets.chomp.split('').map do |x|
  if count.even?
    even[x] += 1
  else
    odd[x] += 1
  end
  count += 1
end
# p even
# p odd
pre1 = even["0"] + odd["1"]
pre2 = even["1"] + odd["0"]
puts pre1 <= pre2 ? pre1 : pre2
