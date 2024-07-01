a, b, c = gets.split(' ').map(&:to_i)
p a.upto(b).select {|n| c % n == 0}.length
