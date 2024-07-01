w0=0
h0=0
 
w,h,n=gets.chomp.split(" ").map(&:to_i)
 
n.times{
  w1,h1,a=gets.chomp.split(" ").map(&:to_i)
  case a
    when 1
    	w0=w1 if w0 < w1
    when 2
    	w=w1 if w > w1
    when 3
    	h0=h1 if h0 < h1
    when 4
    	h=h1 if h > h1
  end
  }
 
if (w-w0 >= 0 ) && (h-h0 >= 0)
  puts (w-wo)*(h-h0)
else
  puts 0
end