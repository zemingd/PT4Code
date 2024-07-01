N = gets.to_i

d = gets.chomp.split.map(&:to_i)

sum = 0

k = 0

i = k  + 1

while k < N do
	if i < N
       sum += d[k] * d[i]
       i +=1
    else
   	   k += 1
   	   i = k + 1
    end
end

puts sum