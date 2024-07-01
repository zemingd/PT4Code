N,X=gets.split.map(&:to_i)
as=gets.split.map(&:to_i)
res=(as[0]-X).abs
N.times do |i|
	res=res.gcd((as[i]-X).abs)
end
puts res