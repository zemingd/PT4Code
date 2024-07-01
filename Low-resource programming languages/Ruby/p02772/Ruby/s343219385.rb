n = gets.to_i
ary = []
while a = gets
    ary.push(a)
end

flag = "APPROVED"

ary.each do |a|
    a = a.to_i
    if a % 2 == 0
        if a % 3 != 0 or a % 5 != 0
            flag = "DENIED"
        end
    end
end
puts flag