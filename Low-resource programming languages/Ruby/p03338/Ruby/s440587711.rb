n = gets.chomp.to_i
s = gets.chomp.split("")
a = []
b = s
ans = 0
(n-1).times do 
    hash = Hash.new(0)
    arr = [*"a".."z"]
    arr.each do |i|
    hash[i] += 0
    end
    a << b.shift
    aa = a.uniq
    bb = b.uniq
    aa.each do |i|
        hash[i] += 1
    end
    bb.each do |i|
        hash[i] += 1
    end
    count = 0
    hash.each do |i|
        if i[1] == 2
            count += 1
        end
    end
    ans = [ans,count].max
end
puts ans