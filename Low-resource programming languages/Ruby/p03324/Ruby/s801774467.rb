d, n = gets.chomp.split.map(&:to_i)
if n == 100
    print(1 +(100 ** d) * n)
else    
    print((100 ** d) * n) 
end