n,l = gets.chomp.split(" ").map(&:to_i)
sum = 0
if l >= 0
    sum = n*(n-1)/2 + l*(n-1)
else
    tn = l + n -1
    if tn <= 0
        sum = -n*(n-1)/2 + l*(n-1)
    else
        sum = -l*(l-1)/2 + tn*(tn+1)/2
    end
end
puts sum