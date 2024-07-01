
x, k, d = gets.chomp.split(" ").map(&:to_i)
x = x.abs

if(x>=k*d)
  puts(x-k*d)
else
  m = x%d;
  div = x/d;
  if ( (k-div) % 2 == 0) 
    puts(m)
  else
    puts(d-m)
  end
end
