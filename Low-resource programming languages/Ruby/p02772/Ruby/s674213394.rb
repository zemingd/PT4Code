n=gets.to_i
a=gets.split.map(&:to_i)
for i in 0...n do
    if a[i]%2==0 && a[i]%3!=0 && a[i]%5!=0
        puts "DENIED"
        exit
    end
end
puts "APPROVED"


