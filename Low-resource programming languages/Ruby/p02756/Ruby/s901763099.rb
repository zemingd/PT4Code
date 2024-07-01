s = gets.chomp
q = gets.to_i

is_front = true

q.times{
	t,f,c = gets.split

	if t == "1" then
		is_front = ! is_front
	elsif f == "1" && is_front || f == "2" && ! is_front then
		s = c + s
	else
		s = s + c
	end
}

if ! is_front then
	s.reverse!
end

puts s