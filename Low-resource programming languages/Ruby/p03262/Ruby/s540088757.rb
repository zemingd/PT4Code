n,X=gets.split.map(&:to_i)
xs=gets.split.map{|x| (X-x.to_i).abs}
puts xs.inject{|x,a| x.gcd(a)}
