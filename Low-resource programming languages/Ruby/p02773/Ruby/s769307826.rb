amount = gets.chomp!.to_i

array = []
amount.times do ||
  array << gets.chomp!
end

uniq_array = array.uniq
list = []
uniq_array.each do |search_word|
    count = 0
    array.each do |word|
        if word.eql?(search_word)
            count+=1
        end
    end
    list << count
end

max_time = list.max
max_list = []
list.each_with_index do |num,i|
    if num.eql?(max_time)
        max_list << uniq_array[i]
    end
end

puts max_list.sort

