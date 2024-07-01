
num, length = gets.split(/\s/).map{ |str| str.to_i }
words = []
num.times{ words.push(gets.strip) }
puts words.sort.join
