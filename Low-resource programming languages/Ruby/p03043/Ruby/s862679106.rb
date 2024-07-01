N, K = gets.split.map(&:to_i)

p = Rational(1, N)
puts (1 .. N).inject(0){|s, n| n >= K ? s + p : s + p * (1r/2)**Math.log(K/n.to_f, 2).ceil}.to_f