require 'complex'
require 'bigdecimal'
require 'bigdecimal/util'

a,b,c = gets.chomp.split(' ').map(&:to_d)

as = Math.sqrt(a)
bs = Math.sqrt(b)
cs = Math.sqrt(c)

if (as + bs) < cs
	puts 'Yes'
else
	puts 'No'
end