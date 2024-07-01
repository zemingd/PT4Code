n=gets.to_i
xN=gets.chomp.split.map(&:to_i)
xNMiddle = ((xN.max + xN.min)/2).ceil
sums = []
(xN.min .. xN.max).each do |index|
  sum = 0
  xN.each do |x|
    sum += (x-index)**2
  end
  sums << sum
end
puts sums.min