n = gets.to_i
h = gets.split(" ").map!{|i| i.to_i}
j = 0;cost = 0;
while j < n-1 do
  if j == n-2 
    cost += (h[j+1] - h[j]).abs; j += 1; 
    break
  end
  a = (h[j+1] - h[j]).abs + (h[j+2] - h[j+1]).abs;b = (h[j+2] - h[j]).abs
  if a <= b
    cost += a; j += 2; 
  else
    cost += b; j += 2;
  end
end
puts cost
