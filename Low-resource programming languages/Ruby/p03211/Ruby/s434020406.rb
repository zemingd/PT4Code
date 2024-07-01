x=gets.chomp
d1=999
(0..(x.size-3)).each{|i|
	t=(753-x.slice(i,3).to_i).abs
	d1=(t < d1)?t:d1
}
puts d1