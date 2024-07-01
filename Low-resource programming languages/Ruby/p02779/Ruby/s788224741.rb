n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
asize = a.size
i = 0
hash = Hash.new(0)
while 
    hash[a[i]] += 1
    i += 1
    if i == asize
        break
    end
end
if hash.size == asize
    puts "YES"
else
    puts "NO"
end