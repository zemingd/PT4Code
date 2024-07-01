n=gets.to_i
a=gets.split.map(&:to_i)
mod=1000000007
x=0
k=1
60.times do
  c=0
  a.each do |b|
    c+=b%2
  end
  a=a.map {|b|b/2}
  x+=c*(n-c)*k
  x%=mod
  k*=2
end
puts x
