N = gets.to_i
K = gets.to_i
x = gets.split.map(&:to_i)
sum = 0
x.each do |i|
  if K/2 <= i then
    plus = 2*(K-i)
  else
    plus = 2*i
  end
    sum += plus
end
p sum