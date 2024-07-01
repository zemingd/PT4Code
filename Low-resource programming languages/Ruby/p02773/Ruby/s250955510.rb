n = gets.to_i
list = []
n.times do |time|
    s = gets.chomp.to_s
    list << s
end
uniq = list.uniq
sort = list.sort
hash = Hash.new
uniq.each do |word|
    count = sort.rindex(word) - sort.index(word) + 1
    hash.store(word, count)
end
max = hash.max{ |(_key0,value0),(_key1,value1)| value0<=>value1 }
ans = []
hash.each do |key, value|
    if value == max[1]
        ans << key
    end
end
puts ans.sort