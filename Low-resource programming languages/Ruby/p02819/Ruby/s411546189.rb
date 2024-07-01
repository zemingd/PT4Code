x = gets.to_i
ans = 0
flag = 0

x.upto(500000) do |i|
	(3..(i/2)).each do |j|
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