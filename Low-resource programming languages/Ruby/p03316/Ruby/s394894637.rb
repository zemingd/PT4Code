n = gets.chomp.to_i
nn = n
s = 0
while(nn>0) do
  s += nn % 10
  nn /= 10
end
puts n%s==0 ? "Yes" : "No"