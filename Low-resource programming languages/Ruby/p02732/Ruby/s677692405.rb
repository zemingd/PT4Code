N = gets.to_i
A = gets.split.map(&:to_i)
m = {}
A.each do |a|
  m[a]||=0
  m[a]+=1
end
nn = {}
m.values.each do |n|
  nn[n]||=0
  nn[n]+=1
end
s = nn.map{|n,x| n*(n-1)/2 * x}.reduce(&:+)
A.each do |a|
  n = m[a]
  puts s - (n*(n-1) - (n-1)*(n-2)) / 2
end
