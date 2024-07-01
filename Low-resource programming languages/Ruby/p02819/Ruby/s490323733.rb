x = gets.chomp.to_i
flag = 0
while true do
  for i in 2..x do
    if i==x
      print(x)
      exit
    end
    break if x%i==0
  end
  x += 1
end
