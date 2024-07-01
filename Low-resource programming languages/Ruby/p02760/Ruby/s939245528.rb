card = []
3.times do
	card << gets.split(" ").map(&:to_i)
end
signed = [[0,0,0],[0,0,0],[0,0,0]]
N = gets.to_i
nums = []
N.times do
	nums << gets.to_i
end

N.times do |t|
	for i in 0...3
		for j in 0...3
			if nums[t] == card[i][j]
				signed[i][j] = 1
			end
		end
	end
end

for i in 0...3
	if (signed[i][0] & signed[i][1] & signed[i][2]) == 1
		puts "Yes"
		exit
	end
end

for i in 0...3
	if (signed[0][i] & signed[1][i] & signed[2][i]) == 1
		puts "Yes"
		exit
	end
end

if (signed[0][0] & signed[1][1] & signed[2][2]) | (signed[0][2] & signed[1][1] & signed[2][0]) == 1
	puts "Yes"
	exit
end

puts "No"