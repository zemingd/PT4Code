alf = ('A'..'Z').to_a

N = gets.to_i
d = gets.chomp.split('')

res = []

d.each do |i|
	res << alf[((alf.index(i)+N)%26)]
end

puts res.join