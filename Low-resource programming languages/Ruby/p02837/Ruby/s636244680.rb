N = gets.to_i
全証言 = N.times.map{
	gets.to_i.times.inject([0,0]){|(正直,不正直),| # 自己矛盾はなし
		x, y = gets.split.map(&:to_i)
		next [正直|(y<<(x-1)), 不正直|((1-y)<<(x-1))]
	}
}
F = lambda{|_| b, c = _
	正直, 不正直 = (0...N).select{|i| b[i]==1 }.map{|i| 全証言[i] }.inject([0,0]){|(a,b),(c,d)| [a|c, b|d] }
	next 正直|b, 不正直|c if (正直|b)^b==0
	next F.call [正直|b, 不正直|c]
}
全証言 = 全証言.map(&F)
p (2**N).times.map{|b| F.call [b,0] }.select{|正直,不正直| 正直&不正直==0 }.map{|正直,| (0...N).count{|i| 正直[i]==1 } }.max
