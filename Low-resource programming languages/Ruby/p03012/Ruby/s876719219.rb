n = gets.to_i

w = []
while w1 = $stdin.gets do
  w << w1.chomp.split(" ")
end

sum = 0
w[0].each{|i| sum += i.to_i }

half_over = 0
index = 0
while half_over < sum/2
  half_over += w[0][index].to_i
  index += 1
end



half_less = half_over - w[0][index-1].to_i

if half_over - (sum - half_over)  > (sum - half_less) - half_less
  puts (sum - half_less) - half_less
else
  puts half_over - (sum - half_over)
end