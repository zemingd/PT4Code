n=gets.to_i
a=gets.split.map(&:to_i)
min=a[0]
a.each do |i|
    min=i.gcd(min) if i!=min
    break if min==1
end
p min