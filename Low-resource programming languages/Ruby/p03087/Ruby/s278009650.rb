n,q=gets.split.map &:to_i
s=gets.chomp.chars.join
l=[]
r=[]
q.times do |i|
  l[i],r[i]=gets.split.map &:to_i
end
q.times do |i|
  puts s.slice(l[i]-1..r[i]-1).scan("AC").length
end
