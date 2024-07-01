ary = gets.split('')
zero = 0
one = 0

ary.each do |i|
  zero += 1 if i == '0'
  one += 1 if i == '1'
end

puts [zero, one].min * 2