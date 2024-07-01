#coding:utf-8
input = gets.chomp!
count = input.length
number = Array.new(26,0)
i = 0
("a".."z").each{ |word|
 count.times{ |j|
 if input[j].to_s =~ /#{word}/i
  number[j] += 1
 end
 }
 i += 1
}
i = 0
("a".."z").each{|word|
 puts "#{word} : #{number[i]}"
 i += 1
}