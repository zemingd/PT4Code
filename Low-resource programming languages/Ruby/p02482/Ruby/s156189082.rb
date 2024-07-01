i = gets
a = i.split(' ')[0].to_i
b = i.split(' ')[1].to_i

if a < b
	puts 'a < b'
elsif a > b
	puts 'a > b'
elsif a == b
	puts 'a == b'
end