n = gets.to_i
a = gets.split.map(&:to_i)

hoge = a + a.map{ |i| i-1 } + a.map{ |j| j+1 }
puts hoge.count(hoge.max_by{ |x| hoge.count(x) })
