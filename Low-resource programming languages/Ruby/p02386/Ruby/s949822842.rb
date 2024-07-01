def roll(d, cmd)
	case cmd
	when ?E
		d[0], d[2], d[5], d[3] = d[3], d[0], d[2], d[5]
	when ?N
		d[0], d[1], d[5], d[4] = d[1], d[5], d[4], d[0]
	when ?S
		d[0], d[1], d[5], d[4] = d[4], d[0], d[1], d[5]
	when ?W
		d[0], d[2], d[5], d[3] = d[2], d[5], d[3], d[0]
	when ?C # clockwise
		d[1], d[2], d[4], d[3] = d[2], d[4], d[3], d[1]
	when "C2"
		d[1], d[2], d[4], d[3] = d[4], d[3], d[1], d[2]
	when "C3"
		d[1], d[2], d[4], d[3] = d[3], d[1], d[2], d[4]
	when "E2"
		d[0], d[2], d[5], d[3] = d[5], d[3], d[0], d[2]
	end
end

def format(d)
	min = d.min
	roll(d, ['', 'N', 'W', 'E', 'S', 'E2'][d.index(min)])
	min = d[1, 4].min
	roll(d, ['', 'C', 'C3', 'C2'][d[1, 4].index(min)])

	return d.join('_')
end

n = gets.to_i

dices = {}
n.times do
	id = format(gets.split.map(&:to_i))
	if dices[id]
		puts 'No'
		exit
	end
	dices[id] = true
end

puts 'Yes'

