x,a,b=gets.split.map(&:to_i)
puts a-b > 0 ? 'delicious' : a+x < b ? 'dangerous' : 'safe'