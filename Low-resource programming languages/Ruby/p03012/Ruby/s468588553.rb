gets
w=gets.split.map(&:to_i)



x = (0...w.size).map {|i|
    (w[0,i].reduce(0,:+) - w[i,w.size - i].reduce(0,:+)).abs
}.min


p x