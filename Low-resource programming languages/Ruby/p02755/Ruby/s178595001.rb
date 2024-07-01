a,b=gets.split.map &:to_i
p (1..10000).find{|n|
	(n*0.08).floor==a&&(n*0.1).floor==b
}||-1