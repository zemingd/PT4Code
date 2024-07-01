n = gets.chomp.split.map(&:to_i)

hp = gets.chomp.split.map(&:to_i)
hp.delete(0)

while hp[1] != nil
    hp.sort!

    pivot = hp[0]
    hp.delete_at(0)
    hp.length.times do |i|
        hp[i] = hp[i] % pivot
    end
    hp.push(pivot)

    hp.delete(0)
end

puts hp[0]
