x, a, b = [gets, gets, gets].map(&:to_i)
x -= b until x - a < b
p x - a