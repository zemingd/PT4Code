# Your code here!

h,w = gets.chomp.split.map &:to_i

if(w.even?)
  puts w*h/2
else
  if(h.even?)
    puts (w/2+1)*h/2 + ((w)/2)*h/2
  else
    puts (w/2+1)*(h/2+1) + ((w)/2)*h/2
  end
end