V=[0,1,0,-1,0]
F=->m,x,y{
  u={x+y*100=>0}
  a=[[x,y]]
  t=0
  r=nil
  while a.size>0
    t+=1
    b=[]
    a.each{|c,d|
      V.each_cons(2){|e,f|
        g,h=c+e,d+f
        next if !m[h][g]||u[g+h*100]
        u[g+h*100]=t
        b<<[g,h]
      }
    }
    r=a
    a=b
  end
  [t-1,r]
}
H,W=gets.split.map(&:to_i)
m=H.times.map{gets.chars.map{|c|c==?.}+[false]}+[[]]
H.times{|y|
  W.times{|x|
    next if !m[y][x]
    t,r=F[m,x,y]
    p [t,*r.map{|a,b|F[m,a,b][0]}].max
    exit
  }
}
