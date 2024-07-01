a,b,c,d,e,f=gets.split.map(&:to_i)
x=100*a
y=0

maxs=(f*e*1.0/(100+e)).to_i
maxw=(f*1.0/(100+e)).to_i*100
g=c.gcd(d)

hash1={}
ary=(0..(f/100/a+1)).to_a.concat((0..(f/100/b+1)).to_a).uniq
ary.each{|i| hash1[i*100]=true}
ary.combination(2){|i,j|hash1[(i+j)*100]=true if i+j<=maxw/100}
aryw=hash1.keys.sort.reverse

hash2={}
ary=(0..(maxs/a)).to_a.concat((0..(maxs/b)).to_a).uniq
ary.combination(2){|i,j|hash2[i+j]=true if i+j<maxs}
arys=hash2.keys.sort.reverse

aryw.each{|i| arys.each{|j|
  x=e*1.0/(100+e)
  y=j*1.0/(i+j)
  if (x-y).abs < 10**(-9) and i+j<f
    puts "#{i+j} #{j}"
    exit
  end
  }}
