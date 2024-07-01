n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_s
end

if ary.uniq != ary
	puts "No"
	exit
end

(n-1).times do |i|
	if ary[i][-1] != ary[i+1][0]
		puts "No"
		exit
	end
end

puts "Yes"
