a,b = gets.split(' ').map(&:to_i)

aa = []
ba = []

a.times do |ai|
	ba << b
end

b.times do |bi|
	aa << a	
end

if a < b
	puts aa.join
elsif a > b
	puts ba.join
else
	puts aa.join
end