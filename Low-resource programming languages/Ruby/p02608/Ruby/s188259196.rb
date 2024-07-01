n = gets.to_i

def func1(n1)
  cnt=0
  1.upto(n1) do |x|
    break if (x**2+1**2+1**2+x*1+1*1+1*x) > n1
    1.upto(n1) do |y|
      break if (x**2+y**2+1**2+x*y+y*1+1*x) > n1
      1.upto(n1) do |z|
        if (x**2+y**2+z**2+x*y+y*z+z*x)==n1
          cnt+=1
        elsif (x**2+y**2+z**2+x*y+y*z+z*x) > n1
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
