a, b, c = gets.chop.split(' ').map(&:to_i)
count = 0
a.step b do |n|
  count = count + 1 if c % n == 0
end

puts count

