n = gets.to_i
ary = []
n.times do
  ary << gets.split(" ").map(&:to_i)
end

ary = ary.sort {|a,b| a[1] <=> b[1]}
time_sum = 0

ary.each do |x|
	time_sum += x[0]
	if time_sum > x[1]
		puts "No"
		exit
		break
	end
end

puts "Yes"
