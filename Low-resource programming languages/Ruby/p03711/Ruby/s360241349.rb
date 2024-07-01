x,y = gets.split.map(&:to_i)
g = [-1,0,2,0,1,0,1,0,0,1,0,1,0]
puts g[x] == g[y] ? 'Yes' : 'No'