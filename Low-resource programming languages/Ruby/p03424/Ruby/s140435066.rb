require 'pp'

N,d=gets.chomp.split(' ').map{|n| n.to_i}
S=gets.chomp.split(' ').map{|n| n}

if(S.any?{|s| s=="Y"})
	puts "Four"
else
	puts "Three"
end
