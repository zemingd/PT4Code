DBG = !true
n,m = gets.split.map{|z| z.to_i}
a = []
for i in 0...n
  a << gets.split.map{|z| z.to_i}
end
print a if DBG
like = Array.new(m+1, 0)
for i in 0...n
  for j in 1..a[i][0]
    like[a[i][j]] += 1
  end
end
print like if DBG
likeall = like.select{|z| z==n}
print likeall if DBG
puts "#{likeall.size}"
