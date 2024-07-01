n = gets.chomp.to_i
button = []

n.times do
    i = gets.chomp.to_i
    button.push(i)
end

flag = 0
now = 1
push_num = 0
loop do
    push_num += 1
    now = button[now-1]
    if(now == 2)
        flag = 1
        break;
    elsif now == 1
        break;
    end
end

if flag == 1
    puts push_num
else
    puts -1
end
