(n,l)=gets.split.map(&:to_i)

r = (l...l+n).reduce(:+) - (l...l+n).min_by(&:abs)
p r
