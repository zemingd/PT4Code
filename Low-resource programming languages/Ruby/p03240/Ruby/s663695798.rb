gets
s=$<.map{|s|s.split.map &:to_i}
z=s.select{|x,y,h|h==0}
a=s.select{|x,y,h|h>0}
(0..100).map{|v|
  (0..100).map{|w|
    i=0
    k=0
    a.all?{|x,y,h|
      d=(x-v).abs+(w-y).abs
      i+=1
      if i==1
        k=d+h
        true
      else
        d+h==k
      end
    }&&z.all?{|x,y,h|
      d=(x-v).abs+(w-y).abs
      d>=k
    }&&(
      puts [v,w,k]*" "
      exit
    )
  }
}