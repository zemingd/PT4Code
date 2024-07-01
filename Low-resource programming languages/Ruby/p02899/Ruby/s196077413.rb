n = gets.to_i
a = gets.split.map(&:to_i)

st = Array.new(n).map{Array.new(2)}
for i in 0..(n-1)
  st[i][0] = a[i]
  st[i][1] = i+1
end

st.sort!{|a,b| a[0] <=> b[0]}

for i in 0..(n-1)
  print "#{st[i][1]} "
end
puts ""