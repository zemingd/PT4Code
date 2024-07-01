s = gets.chomp
t = gets.chomp

if t.index(s) == 0 && s.size == t.size - 1 then
	puts 'Yes'
else
	puts 'No'
end