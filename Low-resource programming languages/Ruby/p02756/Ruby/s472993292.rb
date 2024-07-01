def function(s, q, querys)
	string = s
	querys.each do |query|
		if query[0...1] == "1"
			string = string.reverse
		elsif query[0...1] == "2"
			array = query.split
			if array[1] == "1"
				string = array[2] + string
			elsif array[1] == "2"
				string = string + array[2]
			end
		end
	end
	string
end

s = gets.chomp
q = gets.chomp.to_i
query = []
(0...q).each do |_|
	query.push(gets.chomp)
end
puts function(s, q, query)
