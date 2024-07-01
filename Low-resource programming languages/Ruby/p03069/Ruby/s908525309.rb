n=gets.chomp.to_i
s=gets.chomp.split("")
ans=0
for i in 0..n-1
  if s[i]=="#"
    ans=s.slice(i..n-1).count(".")
    break
  end
end
puts ans