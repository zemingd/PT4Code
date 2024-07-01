x = gets.to_i
ans = 0
flag = 0
x += 1 if x.even?
x.step(500000,2) do |i|
	(1..(i/2)).each do |j|
		flag = 1 if i % j == 0
	end
  if flag == 0
    ans = i
    break
  else
  	flag = 0
  end
end
puts ans