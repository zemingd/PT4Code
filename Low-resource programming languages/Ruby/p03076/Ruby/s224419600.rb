a = [0, 0, 0, 0, 0]
a.map! { STDIN.gets.to_i }
b = a.map {|n|((n%10)==0)?n:((n/10)+1)*10}
c = a.map {|n|((n%10)==0)?10:n%10}
i = c.index(c.min)
b[i] = a[i]
puts b.inject(:+)