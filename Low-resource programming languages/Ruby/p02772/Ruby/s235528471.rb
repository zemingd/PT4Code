i = gets.to_i
ary = gets.split(" ").map(&:to_i)
count = 0
ary.each do |n|
    if n % 2 == 0
        k = n
        if k % 3 != 0 && k %5 !=0
            count +=1
        end
    end
end
if count == 0
    puts "APPROVED"
else
    puts "DENIED"
end