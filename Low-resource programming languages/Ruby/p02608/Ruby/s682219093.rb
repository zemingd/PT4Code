def f(x,y,z)
  return x**2 + y**2 + z**2 + x*y + y*z + z*x
  
end
def check(x=1,y=1,z=1,n)
  [0,1].repeated_combinataion(3) do |x,y,z|
  end
end

def fact(x)
  case x
    when 3
      return 6
    when 2
      return 2
    when 1
      return 1
  end
end

def check(n)
  cnt = 0
  1.upto(100) do |x|
    break if f(x, 1, 1) > n
    1.upto(100) do |y|
      break if f(x, y, 1) > n
      1.upto(100) do |z|
        if f(x,y,z) == n
          arr=[x,y,z]
          cnt += 1
        else
          if f(x,y,z) > n
            break
          end
        end
      end
    end
  end
  return cnt
end

N = gets.to_i
1.upto(N) do |i|
  puts check(i)
end