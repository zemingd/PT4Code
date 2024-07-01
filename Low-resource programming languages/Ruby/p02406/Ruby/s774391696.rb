n = STDIN.gets.to_i
i=1
x=0

define_method(:checkNum){
 x = i

 if(x%3 == 0)
   print " #{i}"
   endCheckNum
 else
  include3
 end
}

define_method(:include3){
 if(x%10 == 3)
   print " #{i}"
   endCheckNum
 else
  x/=10
  include3 if x>0
  endCheckNum
 end
}

define_method(:endCheckNum){
 if((i+=1) <= n)
   checkNum
 end
}

checkNum