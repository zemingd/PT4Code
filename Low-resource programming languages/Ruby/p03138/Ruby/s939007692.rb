n, x = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)

max = 0
x.downto(0) do |i|
  sum = 0
  ary.each do |num|
    sum += i ^ num
  end
  sum > max ? max = sum : max
end
puts max
