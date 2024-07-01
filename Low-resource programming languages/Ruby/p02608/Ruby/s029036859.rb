n = gets.to_i

def func1(n1)
  cnt=0
  1.upto(n1) do |x|
    1.upto(n1) do |y|
      1.upto(n1) do |z|
        if (x**2+y**2+z**2+x*y+y*z+z*x)==n1
          cnt+=1
        end
      end
    end
  end
  cnt
end

1.upto(n) do |n1|
  puts func1(n1)
end
