n = gets.split(//).map(&:to_i)

num = 0
n.each do |i|
    if i == 9
        n[num] = 1
    else
        n[num] = 9
    end
    num = num + 1
end

puts n.join