a,b,c,d=gets.split("")
x=proc{(rand()>0.5)?"+":"-"}
s=""
s=a+x[]+b+x[]+c+x[]+d until eval(s)==7
puts s+"=7"