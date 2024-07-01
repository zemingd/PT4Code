a,b,c,k = gets.chomp.split.map(&:to_i)
if k <= a
        puts a
elsif k >= a
    if k - a <= b
        puts a
    elsif k - a - b <= c
        puts (-1) * k
    else 
        puts (-1) * (k - a - b) + a
    end
end
