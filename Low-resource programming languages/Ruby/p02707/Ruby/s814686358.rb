n = gets.to_i

bosses = gets.chomp.split().group_by { |n| n }

n.times do |n|
	puts bosses[(n+1).to_s]? bosses[(n+1).to_s].size : "0"
end