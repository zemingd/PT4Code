l=[0]*10001
1.upto(99) do |x|
  1.upto([x,10000-x**2].min) do |y|
    1.upto([y,10000-x**2-y**2].min) do |z|
      n=x**2+y**2+z**2+x*y+y*z+z*x
      if n<=10000
        if x==y&&y==z
          l[n]+=1
        elsif x==y||y==z
          l[n]+=3
        else
          l[n]+=6
        end
      end
    end
  end
end
puts l[1..gets.to_i]