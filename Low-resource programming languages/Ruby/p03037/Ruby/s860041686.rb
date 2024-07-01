n,m=$stdin.gets.split(/\s+/).collect{|e| e.to_i}
sita=1
m.times do |i|
  l,r=$stdin.gets.split(/\s+/).collect{|e| e.to_i}
  sita=l if l>sita
  n=r if r<n
end
if n<sita then
  puts "0"
else
  puts "#{n-(sita-1)}"
end