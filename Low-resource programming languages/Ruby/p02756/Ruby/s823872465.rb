a = gets.chomp
n = gets.to_i
cnt = 0

n.times do |i|
    arr = gets.chomp.split(" ")
    if arr[0]=="1" 
        cnt += 1
        next
    else
        if (arr[1]=="1" && cnt%2==0)||(arr[1]=="2" && cnt%2==1)
            a = arr[2] + a
            next
        else
            a = a + arr[2]
            next
        end
    end
end

a.reverse! if cnt % 2 ==1

puts a
