#coding:utf-8

n = gets.chomp.to_i

n.times{|i|
	num1 = gets.chomp.split('').map(&:to_i).reverse!
	num2 = gets.chomp.split('').map(&:to_i).reverse!
	a,b = num1.size, num2.size

	short,long = (a>b) ? num2 : num1, (a>b) ? num1 : num2	 

	tmp = Array.new(long.size-short.size,0)
	short =   short + tmp

	c = 0
	ans = Array.new(long.size)
	long.size.times{|j|
		x = long[j] + short[j] + c
		if x > 9 then 
			c = 1 
			ans[j] = x-10
		else
			c = 0
			ans[j] = x
	 	end
		
		#桁を越えた際
		if j==long.size-1 && c==1  then
			ans << c
		end
	}


	#表示
	str = String.new
	ans.size.times{|k|
		str << ans[ans.size-k-1].to_s
	}
	if str.size<=80 then
		puts str
	else 
		puts "overflow"
	end
}