x=gets.to_i

n=100
i=1
loop do
  n = (n*1.01).floor
  break if n >= x
  i+=1
end

puts i

