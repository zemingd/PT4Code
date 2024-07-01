n = gets.chomp.to_i

a = []
for i in 0..n-1
    a[i]=gets.chomp.to_i
end

sum=0
a.map{|x| sum+=x}
a.sort!

for i in 0..a.length-1
    if sum%10!=0
        puts sum
        exit
    end 
    sum -= a[i]
end

puts sum