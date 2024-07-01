x,y=gets.split.map(&:to_i).map(&:pred)
a=[1,3,1,2,1,2,1,1,2,1,2,1]
puts a[x]==a[y] ? "Yes":"No"
