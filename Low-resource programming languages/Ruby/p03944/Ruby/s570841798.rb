w0=0
h0=0
 
w,h,n=gets.chomp.split(" ").map(&:to_i)
 
n.times{
  w1,h1,a=gets.chomp.split(" ").map(&:to_i)
  case a
    when 1
    	if w0 < w1
          w0=w1
        end
    when 2
    	if w1 < w
          w=w1
        end
    when 3
    	if h0 < h1
          h0=h1
        end
    when 4
    	if h1 < h
          h=h1
        end
  end
  }
 
if (w-w0 >0 ) || (h-h0 >0)
  puts (w-wo)*(h-h0)
else
  puts 0
end