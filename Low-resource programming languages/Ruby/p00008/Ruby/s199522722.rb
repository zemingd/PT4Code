$count=[]

for num in 0..36 do
  $count[num]=0
  for a in 0..9 do
    for b in 0..9 do
      for c in 0..9 do
        for d in 0..9 do
          if a+b+c+d==num then 
            $count[num]+=1
          end
        end
      end
    end
  end
end

def answer(n)
  if n<0 or n>36
    return 0
  else
    return $count[n]
  end
end

while n = gets do
  puts answer(n.to_i)
end