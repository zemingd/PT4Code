require 'complex'

a,b,c = gets.chomp.split(' ').map(&:to_i)

as = Math.sqrt(a)
bs = Math.sqrt(b)
cs = Math.sqrt(c)

if (as + bs) < cs
	puts 'Yes'
else
	puts 'No'
end
