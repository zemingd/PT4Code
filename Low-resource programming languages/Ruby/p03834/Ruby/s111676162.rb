k , s = gets.chomp.split(" ").map(&:to_i)
if k >= s then
  print((s+2)*(s+1)/2)
elsif s < 2*k then
  print((s+2)*(s-2*k+1)/2+(3*k-s+1)*(s-k)/2)
else
  print((s+2)*(s-2*k+1)/2+(k+1)*k/2)
end
