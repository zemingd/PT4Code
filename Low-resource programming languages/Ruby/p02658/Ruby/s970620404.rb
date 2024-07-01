n = gets
a = gets.split(' ').map(&:to_i)
sum = 1
a.each do |b|
  sum *= b
  if sum > 10**18
    sum = -1
    break
  end
end
puts sum