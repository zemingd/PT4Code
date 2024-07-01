a,b,k=gets.split.map &:to_i
for i in a..a+k-1
  puts i
end
for i in b-k+1..b
  puts i
end