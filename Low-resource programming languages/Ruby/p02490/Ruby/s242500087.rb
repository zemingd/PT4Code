def input()
	times = 0
	list = []
	while true do
		a , b = gets.split().map{|e| e.to_i}.sort!
		if a == 0 and b == 0
			break
		else
			list[times] = [a , b]
			times += 1
		end
	end
	list
end

list = input()
list.each do |v|
	puts "#{v[0]} #{v[1]}"
end