s = gets.chomp
q = gets.chomp.to_i
first = ""
last = ""
rev = 0

q.times do
    input = gets.chomp
    if input[0] == "1"
        rev += 1
    else
        n, f, c = input.split(" ")
        if f == "1"
            if rev % 2 == 0
                first = c + first
            else
                last << c
            end
        else
            if rev % 2 == 0
                last << c
            else
                first = c + first
            end
        end
    end
end

if rev % 2 == 0
    puts first + s + last
else
    puts (first + s + last).reverse
end