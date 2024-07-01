n=gets.to_i
a=gets.split.map &:to_i
b=gets.split.map &:to_i
c=gets.split.map &:to_i
s=0
n.times do |i|
  s+=b[i]
  s+=c[a[i-1]-1] if i>0&&a[i]-a[i-1]==1
end
puts s