while 1
    a = gets.split.map(&:to_i)
    if a[0] == 0 && a[1] == 0 then
        break
    end
    puts ("#" * a[1] + "\n") * a[0]
    puts
end
