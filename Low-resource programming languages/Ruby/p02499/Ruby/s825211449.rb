#coding utf-8
upper = [*"A".."Z"]
lower = [*"a".."z"]
words = gets
input = nil
while input = gets
        words = words + input
end
2 .times do |i|
        print "#{lower[i]} : "
        puts words.count("#{upper[i]}#{lower[i]}")
end