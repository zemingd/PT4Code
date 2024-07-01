N,C = gets.split.map(&:to_i)
ss = (0...C).map{ [] }
N.times {
  s,t,c = gets.split.map(&:to_i)
  ss[c-1] << [s,0]  
  ss[c-1] << [t,1]
}
sss = []
ss.each{ |ss| 
  ss.sort! 
  (0...ss.size).reverse_each{ |i|
    if i+1 < ss.size && ss[i][0] == ss[i+1][0]
      ss.slice!(i,2)
    end
  }
  ss.each{ |u,v|
    sss << [v == 0 ? u-0.5 : u, v]
  }  
}
sss.sort!
ans = 0
s = 0
sss.each{ |u,v|
  if v == 0
    s += 1
    ans = [ans, s].max
  else
    s -= 1
  end  
}
p ans
