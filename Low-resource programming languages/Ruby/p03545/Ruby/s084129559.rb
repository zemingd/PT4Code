a, b, c, d = gets.chomp.split("").map(&:to_i)
op = []
flag = false
(0..1).each do |i|
    (0..1).each do |j|
        (0..1).each do |k|
            (0..1).each do |l|
                if (i*2-1)*a + (j*2-1)*b + (k*2-1)*c + (l*2-1)*d == 7
                    op.push(i, j, k, l)
                    flag = true
                end
                break if flag     
            end
            break if flag
        end
        break if flag
    end
    break if flag
end
(0..3).each do |i|
    if op[i] == 1
        op[i] = '+'
    else 
        op[i] = '-'
    end
end

puts "#{a}#{op[0]}#{b}#{op[1]}#{c}#{op[2]}#{d}#{op[3]}=7"