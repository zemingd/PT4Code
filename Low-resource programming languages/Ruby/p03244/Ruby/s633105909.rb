n = gets.to_i
array = gets.chomp.split(' ').map { |v| v.to_i }
count = [{}, {}]
maxCount = [0, 0]
maxItem = [0, 0]
subMax = 0
subItem = 0
array.each_with_index { |item, idx|
    cnt = count[idx%2]

    if cnt.has_key?(item)
        cnt[item] += 1
    else
        cnt[item] = 1
    end
    
    if maxCount[idx%2] <= cnt[item]
        if idx.odd? && maxItem[1] != item
            subMax = maxCount[1]
            subItem = maxItem[1]
        end
        maxItem[idx%2] = item
        maxCount[idx%2] = cnt[item]
    elsif idx.odd? && subItem == 0
        subMax = cnt[item]
        subItem = item
    end
    # p maxItem
    # p maxCount
    # p subItem,subMax
}

# p maxItem
# p maxCount
# p subItem
# p subMax

if maxItem[0] == maxItem[1]
    maxItem[1] = subItem
    if subItem != 0
        maxCount[1] = subMax
    end
end

totalCount = 0
count.each_with_index { |cnt, idx|
    cnt.each_pair { |key, value|
        totalCount += maxCount[idx] if maxItem[idx] != key
    }
}

puts totalCount