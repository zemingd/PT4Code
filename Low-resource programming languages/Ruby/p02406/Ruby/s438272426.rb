h=gets.to_i
N=3
loop do
break if N >= h

if N % 3 == 0
   print (" ",N)
end

if N % 10 == 3
   print (" ",N)
end

N+=1
end
