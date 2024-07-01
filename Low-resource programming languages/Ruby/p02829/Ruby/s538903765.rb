a = [1, 2, 3]
2.times do 
    a.delete(gets.to_i)
end
p a[0]