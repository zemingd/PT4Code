n,d=gets.chomp.split(' ').map{|n| n.to_i}

fn = 0
tmp = n
while(tmp>0)
	fn += tmp % 10
	tmp = tmp / 10
end
if(n % fn == 0)
	puts "Yes"
else
	puts "No"
end
