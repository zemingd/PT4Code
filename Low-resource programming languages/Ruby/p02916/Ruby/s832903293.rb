gets.to_i
as = gets.split(' ').map(&:to_i)
bs = gets.split(' ').map(&:to_i)
cs = gets.split(' ').map(&:to_i)

sum = bs.sum
as.each_with_index do |a, i|
  if i != 0 && a == as[i-1] + 1
    sum += cs[a-2]
  end
end
puts sum