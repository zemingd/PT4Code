s = gets.chomp.split('')
k = gets.to_i
x=[]
s.each do |t|
  t = t.to_i
  x << t
  break if t != 1
end
if x.length < k
  puts x[-1]
else
  puts x[k-1]
end