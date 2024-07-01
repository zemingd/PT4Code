x,a,b=gets.split.map &:to_i
puts a>=b ? :delicious : x>=b-a ? :safe : :dangerous
