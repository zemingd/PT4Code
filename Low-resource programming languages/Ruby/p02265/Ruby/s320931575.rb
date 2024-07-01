n = gets.to_i
arr = []
n.times {arr.push(gets.chomp)}

ansArr = []
arr.each do |cmd|
    # p ansArr
    if cmd[0,6] == "insert" then
        x = cmd.split(' ')[1]
        ansArr.unshift(x)
    elsif cmd[0,7] == "delete " then
        x = cmd.split(' ')[1]
        ansArr.delete_at(ansArr.find_index(x)) if ansArr.find_index(x) != nil
    elsif cmd == "deleteFirst" then
        ansArr.shift
    elsif cmd == "deleteLast" then
        ansArr.pop
    else
        puts "did not match any condition..."
    end
end

puts ansArr.join(' ')

