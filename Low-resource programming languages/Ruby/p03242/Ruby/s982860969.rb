n=gets.chomp.split("").map &:to_i
for i in 0..2
  if n[i]==1
    n[i]=9
  else
    n[i]=1
  end
end
puts n.join
