x,y = gets.split.map!(&:to_i)
a = [0,1,2,1,3,1,3,1,1,3,1,3,1]

puts a[x] == a[y] ? "Yes" : "No"