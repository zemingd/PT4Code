n = gets.chomp.to_i
hash = {}

n.times{|i|
    word = gets.chomp
    hash[word] ||= 0
    hash[word] += 1
}

max_value = hash.values.max
result_hash = hash.select{|k, v| v == max_value}

result_hash.sort.each {|k,v|
    puts k
}