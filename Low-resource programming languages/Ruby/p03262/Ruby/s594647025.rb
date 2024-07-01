n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
b=a.map{|i| (i-x).abs}
g=nil
b.each do |i|
    g=i if g.nil?
    g=i.gcd(g)
end
p g