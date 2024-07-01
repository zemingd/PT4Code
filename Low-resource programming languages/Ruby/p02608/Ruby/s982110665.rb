n=gets.to_i
fs=[0]*n
1.upto(100){|x|
  s1=x*x
  break if s1>=n
  1.upto(100){|y|
    s2=s1+y*y+x*y
    xpy=x+y
    break if s2>=n
    1.upto(100){|z|
      s=s2+z*z+z*xpy
      break if s>n
      fs[s-1]+=1
    }
  }
}
puts fs