s,t = 2.times.map{gets.chomp}
a,b = 2.times.map{Hash.new{|h,k|h[k] = []}}
s.size.times do |i|
  a[s[i]] << i
  b[t[i]] << i
end
puts a.values.sort == b.values.sort ? "Yes" : "No"