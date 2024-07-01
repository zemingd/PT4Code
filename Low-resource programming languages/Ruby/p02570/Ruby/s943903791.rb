input = gets.split(" ").map(&:to_i)
dis = input[0]
limit = input[1].to_f
speed = input[2]
time = dis.to_f / speed.to_f

if time <= limit
	puts "Yes"
else
	puts "No"
end