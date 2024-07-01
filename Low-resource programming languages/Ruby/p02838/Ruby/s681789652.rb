n=gets.to_i
a=gets.split.map(&:to_i)
mod=1000000007
x=0
60.times do |i|
  c=0
  n.times do |j|
    c+=a[j]%2
    a[j]/=2
  end
  x+=c*(n-c)*2**i
  x%=mod
end
puts x
