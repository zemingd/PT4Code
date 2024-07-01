_,m=gets.chomp.split(" ").map(&:to_i);
line = gets.split(' ').map(&:to_i)

sum = line.inject(:+)
check = sum/4/m

# print(sum, "\n")
# print(check, "\n")
# puts(line)

q=0
line.each do |i|
    if check < i
        q += 1
    end
end

#puts(q)
if m <= q
    puts("Yes")
elsif m > q
    puts("No")
end