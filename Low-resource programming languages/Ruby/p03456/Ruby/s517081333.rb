a,b = gets.split(' ').map(&:to_s)
a = (a+b).to_i

squrnums = []

1.upto(100) do |i|
	squrnums << i**2
end

if(squrnums.include?(a))
	puts 'Yes'
else
	puts 'No'
end