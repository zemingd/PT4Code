while n = gets
    n = n.chomp.to_i
    count = 0
    (0..9).to_a.repeated_permutation(4){|a,b,c,d| count += 1 if a+b+c+d==n}
    puts count
end