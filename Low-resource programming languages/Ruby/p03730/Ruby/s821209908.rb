a, b, c = gets.chomp.split.map(&:to_i)
arr = []
sum = 0
while true
    sum += a
    r = sum % b
    case r
    when c
        puts "YES"
        break
    else
        if arr[r] == true
            puts "NO"
            break
        else
            arr[r] = true
        end
    end
end