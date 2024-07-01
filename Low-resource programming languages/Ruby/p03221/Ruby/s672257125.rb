n,m=gets.chomp.split(" ").map(&:to_i)
table=Array.new(n+1).map{Array.new()}
py=[]
m.times do|i|
	py[i]=gets.chomp.split(" ").map(&:to_i)
	table[py[i][0]].push(py[i][1])
end
table.map{|list| list.sort!}
id={}
m.times do|i|
	if(table[i]!=[])
		(table[i].size).times do|j|
			id["#{i}:#{table[i][j]}"]=("#{i}".rjust(6,"0")+"#{j+1}".rjust(6,"0"))
		end
	end
end
m.times do|i|
	puts(id["#{py[i][0]}:#{py[i][1]}"])
end
