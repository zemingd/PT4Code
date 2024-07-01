P = [0,1,2,1,4,1,4,1,1,4,1,4,1]
x,y = gets.split.map(&:to_i)
puts P[x] == P[y] ? 'Yes' : 'No' 