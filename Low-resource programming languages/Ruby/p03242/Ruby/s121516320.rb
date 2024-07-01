n = gets.split(//).map(&:to_i)

n.times do |i|
    if i == 9
        n[i] = 1
    else
        n[i] = 9
    end
end

puts n.join