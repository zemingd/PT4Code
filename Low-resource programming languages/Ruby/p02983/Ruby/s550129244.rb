input = STDIN.gets.chomp!
L, R = input.split(" ").map!(&:to_i)
num = []
L.upto(R) do |i|
  num << i
end
if (R-1)*R < 2019 then
  p L*(L+1).modulo(2019)
else
  min_value = 2018
  num.combination(2).to_a.each_with_index do |l, i|
    value = (l[0]*l[1]).modulo(2019)
    min_value = value if min_value > value
  end
  p min_value
end