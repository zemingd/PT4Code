count = gets.to_i
current_len = 0
ok = false
gets.split.map(&:to_i).each{|n|
    if n == current_len + 1
        current_len += 1
        ok = true
    end
}
if ok
    puts count - current_len
else
    puts -1
end
