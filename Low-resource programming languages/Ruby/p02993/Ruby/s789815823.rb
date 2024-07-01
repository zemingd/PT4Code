arr=gets.split("")
prev="hoge"

flag=true
arr.each do |i|
    if i==prev
        puts "Bad"
        flag = false
        break
    end
    prev = i
end
if flag
    puts "Good"
end