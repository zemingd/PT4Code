x=gets.to_i
n=100
i=0
while true
  n = (n * 1.01).floor
  i+=1
  break if x <= n
end
puts i