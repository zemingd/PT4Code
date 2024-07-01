n = gets.to_i
ary = []
while a = gets
    ary.push(a)
end

flag = "DENIED"

ary.each do |a|
    a = a.to_i
    if a % 2 == 0
        if a % 3 == 0 
            flag = "APPROVED"
        end
        if a % 5 == 0
            flag = "APPROVED"
        end
    end
end
puts flag