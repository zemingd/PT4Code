A,B,C,K=gets.split.map(&:to_i)
sum=0

if K-A>=0
    sum+=A
    if K-A-B>=0
        sum-=(K-A-B)
    end
else
    sum+=K
end

puts sum