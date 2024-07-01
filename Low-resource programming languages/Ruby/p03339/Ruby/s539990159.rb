n=gets.to_i
s=gets.chomp.chars
min=n
s.each_with_index do|c,i|
  if(i==n-1)
    x=s.slice(0..n-2).select {|c1| c1=="W"}.size
  elsif(i==0)
    x=s.slice(1..n-1).select {|c1| c1=="E"}.size
  else
    x=s.slice(0..i-1).select {|c1| c1=="W"}.size+s.slice(i+1..n-1).select {|c1| c1=="E"}.size
  end
  if min>x then min=x end
end
p min
