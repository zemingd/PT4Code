x=gets.to_i
ma=1
for i in 1..1000
  for j in 2..10
    if x>=i**j
      ma=[ma,i**j].max
    end
  end
end
puts ma