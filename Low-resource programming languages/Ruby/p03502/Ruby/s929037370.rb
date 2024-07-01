x=gets
fx=x.split('').inject{|sum, x| sum.to_i + x.to_i }
p x.to_i%fx == 0 ? 'yes' : 'no'