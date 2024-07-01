a, b, c = gets.split(' ').map(&:to_i)

ary = (a..b).to_a

count = 0

ary.each do |n|
  count += 1 if (c % n).zero?
end

puts count