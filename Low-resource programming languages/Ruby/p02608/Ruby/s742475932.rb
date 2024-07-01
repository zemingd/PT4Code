n = gets.to_i

answer = Array.new(n,0)

def func3(x,y,z)
  if x==y && y==z
    1
  elsif x==y || y==z || z==x
    3
  else
    6
  end
end

1.upto(n) do |x|
  break if (x**2+1**2+1**2+x*1+1*1+1*x) > n
  x.upto(n) do |y|
    break if (x**2+y**2+1**2+x*y+y*1+1*x) > n
    y.upto(n) do |z|
      if (x**2+y**2+z**2+x*y+y*z+z*x) > n
        break
      end
      answer[(x**2+y**2+z**2+x*y+y*z+z*x)]+=func3(x,y,z)
    end
  end
end

1.upto(n) do |n1|
  puts answer[n1]
end
