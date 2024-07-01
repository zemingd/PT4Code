# Your code here!

h,w = gets.chomp.split.map &:to_i

if(w.even?)
  puts w*h/2
else
  puts ((w-1)*(h/2*2)/2 + h/2) + ((h.even?)? 0 : w/2+1)
end