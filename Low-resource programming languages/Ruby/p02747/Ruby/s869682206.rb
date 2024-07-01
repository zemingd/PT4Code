s = gets.chomp

if s[/^(hi)+$/] then
	puts 'Yes'
else
	puts 'No'
end