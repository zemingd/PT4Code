s = gets.chomp
q = gets.to_i

is_front = true

res = [s]

q.times{
	t,f,c = gets.split

	if t == "1" then
		is_front = ! is_front
	elsif f == "1" && is_front || f == "2" && ! is_front then
		res.insert(0, c)
	else
		res << c
	end
}

if ! is_front then
	res.reverse!
end

puts res.join