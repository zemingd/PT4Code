n=gets.to_i
max_a=Math.sqrt(n).to_i
a=0
b=0
f=[]
1.upto(max_a) do |i|
  if n%i==0
    a=i
    b=n/a
    f<<[a.to_s.length, b.to_s.length].max
  end
end
puts f.min
