n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)
total = nil
(x.min..x.max).map do |c|
  sum = x.map{ |e| (c - e)**2 }.inject(:+)
  total = sum if c == x.min
  if sum <= total
    total = sum
  else
    break
  end
end
p total
