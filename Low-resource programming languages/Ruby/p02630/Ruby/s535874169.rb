N = gets.to_i
a = gets.split.map(&:to_i)
Q = gets.to_i

hash = a.sort.group_by(&:itself).map { |key, value| [key, value.count]}.to_h
sum = hash.map {|item| item.inject(:*)}.sum

Q.times do
    line = gets.split.map(&:to_i)
    if hash.has_key?(line[0]) then
        count = hash[line[0]]
        sum += - line[0] * count + line[1] * count
        hash.store(line[0], hash[line[0]].to_i - count)
        hash.store(line[1], hash[line[1]].to_i + count)
    end
    puts sum
end
