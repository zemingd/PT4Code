#coding:utf-8
input = gets.chomp!
count = input.length
number = Array.new(26,0)
i = 0
("a".."z").each{ |word|
 count.times{ |j|
 if word[0].to_i - input[j] == 0 || word[0].to_i - input[j] == 32
  number[word[0].to_i - 97] += 1
 end
 }
 i += 1
}
i = 0
("a".."z").each{|word|
 puts "#{word} : #{number[i]}"
 i += 1
}