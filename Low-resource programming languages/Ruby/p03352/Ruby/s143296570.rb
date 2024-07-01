x=gets.to_i
p (1..Math.sqrt(x)).map{|n|
    q=(2..10).take_while{|m|n**m<=x}
    q ? n**q.max : 1
}.max
