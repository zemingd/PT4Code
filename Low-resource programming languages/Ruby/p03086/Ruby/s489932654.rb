acgt = ["A", "C", "G", "T"]

s = gets.chomp

count = 0
count_list = []
mode = false

s.each_char do |c|
    if acgt.include?(c)
        count += 1
    else
        count_list.push(count)
        count = 0
    end
end

count_list.push(count)

print count_list.max.to_s