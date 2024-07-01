as = []
bingo = []

3.times{
	a = gets.split.map(&:to_i)
	as << a
	temp = {}
	a.each{ |aa|
		temp[aa] = false
	}
	bingo << temp
}

3.times{ |i|
	temp = {}
	temp[as[0][i]] = false
	temp[as[1][i]] = false
	temp[as[2][i]] = false
	bingo << temp
}

temp = {}
temp[as[0][0]] = false
temp[as[1][1]] = false
temp[as[2][2]] = false
bingo << temp

temp = {}
temp[as[2][0]] = false
temp[as[1][1]] = false
temp[as[0][2]] = false
bingo << temp

print bingo
puts

n = gets.to_i

n.times{
	b = gets.to_i
	bingo.each{ |bingo_e|
		if bingo_e[b] == false then
			bingo_e[b] = true
		end
	}
}

if bingo.select{ |b| b.values == [true,true,true]}.size > 0 then
	puts 'Yes'
else
	puts 'No'
end