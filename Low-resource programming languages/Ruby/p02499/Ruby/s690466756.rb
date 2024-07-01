#coding utf-8
upper = [*"A".."Z"]
lower = [*"a".."z"]
word
input = nil
while input = gets
        words = words + input
end
26.times do |i|
        print "#{lower[i]} : "
        puts words.count("#{upper[i]}#{lower[i]}")
end