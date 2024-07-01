N=gets.to_i
a=gets.split.map(&:to_i)
b=Array.new(N,0)
N.times do |i|
  b[a[i]-1]+=1
end
k=b.select{|e|e!=0}.uniq.size
N.times do |i|
  puts b[a[i]-1]==0 ? (k*k - k)/2 : (k*k +k)/2
end