m=gets.to_i
bb=[]
ff=[]
rr=[]
vv=[]
1.upto(m){|n|
  b,f,r,v=gets.split(" ").map{|v|v=v.to_i}
  bb.push(b)
  ff.push(f)
  rr.push(r)
  vv.push(v)
}
b1,b2,b3=[]
BOR=[]
1.upto(20){|a|
  BOR.push("#")
}
1.upto(4){|n|
  1.upto(3){|s|
    de=[]
    1.upto(10){|b|
      de.push(0.to_i)
    }
    0.upto(m-1){|t|
      de[rr[t]-1]=vv[t] if bb[t]==n&&ff[t]==s
    }
    print (" ")
    puts de.join(" ")
  }
puts BOR.join if n<4
}  