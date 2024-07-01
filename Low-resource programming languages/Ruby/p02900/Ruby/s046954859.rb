def my_gcd(a, b)
  while b!=0 do
    c=a%b
    a=b
    b=c
  end
  return a
end

def my_soinsu_bunkai(n)
  arr=[]
  arr<<1
  i = 2

  while (i*i)<=n
    #puts "now n = #{n}, arr = #{arr}"
    if n%i==0
      arr<<i
      while n%i==0 do
        n/=i
      end
    else
      i+=1
    end
  end
  #puts i
  #puts n 
  if n!=1
    arr<<n
  end
  return arr
end

a,b = gets.chomp.split(" ").map{|i|i = i.to_i}

g = my_gcd(a,b)
#puts "my_gcd(#{a},#{b}) = #{g}"
array = my_soinsu_bunkai(g)
#pp array
puts array.length
=begin
(Math.sqrt(g).to_i).times{|i|
  n = i+1
  if 
}
=end