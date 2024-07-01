n,q=gets.split.map &:to_i
s=gets.chomp
x=[]
y=[]
q.times do |i|
  x[i],y[i]=gets.split.map &:to_i
end
q.times do |j|
  puts s.slice(l[j]-1..r[j]-1).scan("AC").length
end
