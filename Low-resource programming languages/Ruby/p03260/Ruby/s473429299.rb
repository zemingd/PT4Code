a, b = gets.split.map(&:to_i)
hoge = (1..3).map{ |i| a*b*i }.delete_if(&:even?)
puts hoge != [] ? "Yes" : "No"