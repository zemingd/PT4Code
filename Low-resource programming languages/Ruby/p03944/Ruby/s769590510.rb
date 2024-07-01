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
    	if y0 < y1
          y0=y1
        end
    when 4
    	if y1 <y
          y=y1
        end
  end
  }

if (w-w0 >0 ) && (h-h0 >0)
  puts (w-wo)*(h-h0)
else
  puts 0
end

  