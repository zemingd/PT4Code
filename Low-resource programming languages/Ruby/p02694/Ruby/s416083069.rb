x=gets.to_i
sum=100
kekka=0

while true
  sum=(sum*1.01).floor
  kekka+=1
  if sum >=x
    puts kekka
    break
  end
end

