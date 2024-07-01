N = gets.to_i
time = 0
abs = []
result = "Yes"

N.times{
    abs.push(gets.chomp.split(" ").map(&:to_i))
}

abs_sort = abs.sort{ |a, b| a[1] <=> b[1] }

abs_sort.each{|ab|
    time = time + ab[0]
    if time <= ab[1]
        next
    else
        result = "No"
        break
    end
}

print result