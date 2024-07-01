require 'complex'
require 'bigdecimal'
require 'bigdecimal/util'
a,b,c = gets.chomp.split(' ').map(&:to_d)

as = Math.sqrt(a).to_d
bs = Math.sqrt(b).to_d
cs = Math.sqrt(c).to_d

if (as + bs) < cs
	puts 'Yes'
else
	puts 'No'
end
