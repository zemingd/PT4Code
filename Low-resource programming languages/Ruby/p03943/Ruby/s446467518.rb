a,b,c = gets.chomp.split(" ").map{|str| str.to_i}.sort

#この時点でa<=b<=cである
#b+c>b>=aなのでa=b+cにはならない
#c+a>c>=bなのでb=c+aにはならない
#c=a+bの可能性だけを考えればよい

if c==a+b then
	puts "Yes"
else
	puts "No"
end