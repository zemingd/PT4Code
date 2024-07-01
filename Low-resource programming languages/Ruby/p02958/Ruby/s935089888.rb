num = gets.to_i
line1 = gets.split.map(&:to_i)
line2 = line1.dup.sort
key = 0
i = 0
if line1 == line2
  puts "YES"
else
  while key == 0 do
    if line1[i] != i+1
      kari = line1[i]
      line1[i] = i+1
      a = num-(i+1)
		a.times do |j|
			if line1[j+i+1] == i+1
			line1[j+i+1] = kari
            end
		end
    key += 1
	end
   i += 1
   end
  end


if key == 0
  
elsif line1 == line2 
  puts "YES"
else
  puts "NO"
end