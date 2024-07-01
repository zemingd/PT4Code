n=gets.to_i
a=gets.split.map &:to_i
b=a.map &:abs
p b.inject(:+)-a.count(&:negative?)%2*b.min*2