list = gets.chomp.split(' ')
k = list[0].to_i
s = list[1].to_i

count = 0
for l in 0..k do
    x = l
  	if x > s
      break
    end
 
    for m in 0..k do
    y = m
    if x + y > s
      break
    end
        for n in 0..k do
        z = n
            sum = x + y + z
          	if sum > s
              break
            end
          
            if sum == s
                count += 1
            end
        end
    end
end
p count