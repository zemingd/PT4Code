a = gets.split.map(&:to_i)

if a.uniq.length == 2
	puts 'Yes'
else
	puts 'No'
end