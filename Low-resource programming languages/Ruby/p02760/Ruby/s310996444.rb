card = []
3.times { |i| card[i] = gets.chomp.split(" ").map(&:to_i)}
n = gets.to_i
selectedNums = []
n.times { |i| selectedNums[i] = gets.to_i}

# 行でそろう場合
card.each do |row|
    if (row & selectedNums).length == 3
        print 'Yes'
        exit
    end
end

# 列でそろう場合
card.transpose.each do |row|
    if (row & selectedNums).length == 3
        print 'Yes'
        exit
    end
end

# ななめでそろう場合
if ([card[0][0], card[1][1], card[2][2]] & selectedNums).length == 3 || ([card[0][2], card[1][1], card[2][0]] & selectedNums).length == 3
    print 'Yes'
    exit
end

print 'No'