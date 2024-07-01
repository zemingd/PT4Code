n,m = $stdin.gets.split.map(&:to_i)
ary = [0]*(n+2)
result = [0]
m.times do |i|
  l,r = $stdin.gets.split.map(&:to_i)
  ary[l]+=1
  ary[r+1]-=1
end
(1..n+1).each do |i|
  result[i] = result[i-1]+ary[i]
end
puts result.count(m)