x,a,b=gets.split.map(&:to_i)
puts (a>=b)?"delicious":(x+a>=b)?"safe":"dangerous"