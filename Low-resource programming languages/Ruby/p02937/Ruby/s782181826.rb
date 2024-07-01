s = gets.chomp.chars
t = gets.chomp.chars
ans = 0
while !t.empty?
    changed = false
    s.each do |char|
        ans += 1
        if char == t[0]
            t.shift
            changed = true
            break if t.empty?
        end
    end
    if !changed
        puts -1
        exit
    end
end
puts ans