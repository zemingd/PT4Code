r,d,x=gets.split.map(&:to_i)
i=0
while i<10
    x=r*x-d
    puts x
    i+=1
end