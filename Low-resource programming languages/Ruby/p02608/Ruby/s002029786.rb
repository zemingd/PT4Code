io = STDIN
n=io.gets.to_i
f=Array.new(10001,0)
(100..9999).each do |i|
  break if (sum=6*i**2)>10000
  f[sum]+=1
end

(1..99).each do |x|
  ((x)..99).each do |y|
    ((y)..99).each do |z|
     sum= x**2+y**2+z**2+x*y+y*z+z*x
     break if sum>10000
     if x==y&&y==z
      f[sum]+=1
    elsif  x!=y&&y!=z
      f[sum]+=6
    else
      f[sum]+=3
     end
    end
  end
end
(1..n).each {|i|puts f[i]}
