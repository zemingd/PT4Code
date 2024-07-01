k, n = gets.split
deny = gets.split.map(&:to_i)

while 1 do
	deny.each do |d|
		if k.include?(d.to_s)
			break
		else
			puts k
			exit
		end
	end
	k = (k.to_i + 1).to_s
end