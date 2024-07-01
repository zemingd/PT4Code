a,b=gets.chomp.split(" ")
ans=""
if a>b
  (a.to_i).times do|i|
    ans+=b.chomp
  end 
else
  (b.to_i).times do|i|
    ans+=a+""
  end
end
puts ans
