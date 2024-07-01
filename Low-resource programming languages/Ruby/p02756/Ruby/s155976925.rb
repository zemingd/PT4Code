a = gets.chomp
n = gets.to_i

n.times do |i|
    arr = gets.chomp.split(" ")
    if arr[0]=="1"
        a = a.reverse
    else
        if arr[1]=="1"
            a = arr[2] + a
        else
            a = a + arr[2]
        end
    end
end

puts a