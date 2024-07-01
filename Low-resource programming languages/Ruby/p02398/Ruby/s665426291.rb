a,b,c=gets.split.map &:to_i
i=0
a.upto(b){|n|i+=1 if c%n==0}
puts i
