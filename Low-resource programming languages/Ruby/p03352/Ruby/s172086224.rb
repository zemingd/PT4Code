x=gets.to_i
a=1
for i in 1..1000
  for j in 2..10
    if x>=i**j
      a=[a,i**j].max
    end
  end
end
puts a