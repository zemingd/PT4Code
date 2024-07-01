n = gets.chomp.split('').map(&:to_i)

3.times do |num|
    if n[num] == 1
        n[num] = 9
    else
        n[num] = 1
    end
end

puts n.join('')



