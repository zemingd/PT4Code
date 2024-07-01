# Your code here!

input = gets.split
start = input[0].to_i
finish = input[1].to_i

count = 0
for i in start..finish
	tmp = i.to_s
	tmp_r = tmp.reverse
#	puts "#{tmp} #{tmp_r}"
	if tmp == tmp.reverse
      count = count + 1
    end
end

puts count
