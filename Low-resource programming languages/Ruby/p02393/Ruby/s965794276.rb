a, b, c = gets.split.map(&:to_i)
arr = [a,b,c]
arr.sort!
i = 0
3.times do 
if i < 2
    print arr[i],' '
    i += 1
elsif i == 2
    print arr[i], "\n"
end
end

