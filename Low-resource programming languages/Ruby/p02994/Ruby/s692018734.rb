n,l = gets.chomp.split(" ").map(&:to_i)

sum = 0
t = l

for i in 1..n
    sum += t
    t += 1
end

if l >= 0 
    puts sum - l
else
    nl = l + n -1
    if nl > 0
        puts sum
    else
        puts sum - nl
    end
end
