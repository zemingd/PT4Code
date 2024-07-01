H = {}
99.times {|i| H[n=i**5] = i; H[-n] = -i}
X = gets.to_i
F =->(b,y) { a=H[X+y] and puts([a,b]*' ') || exit }
99.times {|b| y = b**5; F[b,y]; F[-b,-y]}