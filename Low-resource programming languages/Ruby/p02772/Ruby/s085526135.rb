n = gets.to_i
ary = []
while a = gets
    ary.push(a)
end

flag = "DENIED"
exp = 0

ary.each do |a|
    a = a.to_i
    if a % 2 == 0
        if a % 3 == 0 or a % 5 == 0
            flag = "APPROVED"
        else
            exp = 1
        end
    end
end

if exp == 1
    puts "DENIED"
else
    puts flag
end