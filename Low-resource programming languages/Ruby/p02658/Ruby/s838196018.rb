a = gets.to_i
line = gets.split(' ').map(&:to_i)
if line.include?(0)
  puts 0
else
  i= 1
  for n in 0..a-1 do
    i *= line[n]
    if i > 1000000000000000000
    	i = -1
    	puts i
      	exit
  	end
  end
  puts i
end