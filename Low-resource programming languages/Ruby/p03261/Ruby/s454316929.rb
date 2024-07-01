r = true
lst = []
N = gets.to_i
N.times do |_|
    lst.push(gets)
end

lst.each do |i|
    if lst.count(i) != 1
        r = false
    end
end

if r
    1.upto(lst.length-1) do |i|
        if lst[i-1][-2] != lst[i][0]
                r = false
        end
    end
end

if r
    puts "Yes"
else
    puts "No"
end