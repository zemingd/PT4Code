a=gets.to_i
b=gets.to_i
c=gets.to_i
x=gets.to_i/50

cnt = 0
for i in 0 .. a
  for j in 0 .. b
    for k in 0 .. c
      if 10 * i + 2 * j + k == x
        cnt += 1
      end
    end
  end
end
puts cnt