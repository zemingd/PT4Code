n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

point = 0
point += b[a[0]-1]
index = a[0]-1

(1..n-1).each do |i|
  point += b[a[i]-1]
  if a[i]-1 == index+1
    point += c[index]
  end
  index = a[i]-1
end

print point