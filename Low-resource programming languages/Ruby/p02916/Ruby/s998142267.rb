n=gets.to_i
a=gets.split.map(&:to_i)
b=gets.split.map(&:to_i)
c=gets.split.map(&:to_i)
sum=0
before=-10
n.times do |i|
    sum+=b[a[i]-1]
    sum+=c[a[i]-2] if a[i]==before+1
    before=a[i]
end
p sum