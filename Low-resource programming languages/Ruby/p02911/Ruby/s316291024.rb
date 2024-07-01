n,k,q = gets.chop.split.map(&:to_i)
a = []
q.times{a << gets.to_i}
for i in 1..n
    num = a.count(i)
    if q >= k + num
        puts "No"
    else 
        puts "Yes"
    end
end