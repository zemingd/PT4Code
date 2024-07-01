x=gets.to_i
ans=0
for i in 1..31 do
  for j in 1..9 do
    if i**j<=x && ans<i**j then
      ans=i**j
    end
  end
end
p ans
