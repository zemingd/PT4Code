a,b,c,d=gets.chomp.split("")
x=Proc.new{(rand()>0.5)?"+":"-"}
s=""
s=a+x.()+b+x.()+c+x.()+d until eval(s)==7
puts s+"=7"