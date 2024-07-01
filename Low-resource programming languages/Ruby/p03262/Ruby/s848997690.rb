N,X,*xs=$<.read.split.map(&:to_i)
xs = (xs + [X]).sort
xmin = xs.min
xs = xs.map {|x| x-xmin}
ret = xs.inject {|a,b| a.gcd(b)}

puts ret
