# encoding: UTF-8
success = 0
x = Array.new
y = Array.new
while line = gets do
  x += line.chomp.split
end
x.each do |t|
  y << t.to_i
end
big_n = y[0]
big_m = y[1]
big_c = y[2]
big_b = y[3..(big_m + 2)]
big_a = y[(big_m + 3)..-1]
#
# p big_n
# p big_m
# p big_c
# p big_b
# p big_a
#
i = 0
while i < big_n do
  j = 0
  sum = 0
  while j < big_m do
    sum = sum + big_a[i * big_m + j] * big_b[j]
    j = j + 1
  end
  if sum + big_c > 0 then
    success = success + 1
  end
  i = i + 1
end
puts "#{success}"