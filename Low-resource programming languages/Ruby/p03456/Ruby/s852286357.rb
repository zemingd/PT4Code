require 'pp'
sqrttb = Array.new(Math.sqrt(100100)){|i| i*i}
a,b=gets.chomp.split(' ').map{|n| n}

if sqrttb.include?((a+b).to_i)
	puts "Yes"
else
	puts "No"
end
