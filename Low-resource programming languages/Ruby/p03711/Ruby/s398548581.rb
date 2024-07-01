a = [nil,1,3,1,2,1,2,1,1,2,1,2,1]
x,y = gets.split.map(&:to_i)
puts (a[x]==a[y] ? "Yes" : "No")