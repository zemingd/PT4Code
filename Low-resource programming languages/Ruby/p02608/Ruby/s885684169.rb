n = gets.to_i

@h={}

def func2(x,y,z)
  @h["#{x},#{y},#{z}"]||=(x**2+y**2+z**2+x*y+y*z+z*x)
end

def func1(n1)
  cnt=0
  1.upto(n1) do |x|
    break if (x**2+1**2+1**2+x*1+1*1+1*x) > n1
    1.upto(n1) do |y|
      break if (x**2+y**2+1**2+x*y+y*1+1*x) > n1
      1.upto(n1) do |z|
        if func2(x,y,z)==n1
          cnt+=1
        elsif func2(x,y,z) > n1
          break
        end
      end
    end
  end
  cnt
end

1.upto(n) do |n1|
  puts func1(n1)
end