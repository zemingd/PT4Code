a=gets.to_i
puts (1..1000).map{|x| x**(2..10).reverse.find{|y| x**y <= a}||0}.max