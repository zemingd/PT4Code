n,m,*a=`dd`.split.map(&:to_i)
puts a.inject(0){|a,b|b<a.sum./4*m.to_f ? a : a+b}<m ? 'No':'Yes'