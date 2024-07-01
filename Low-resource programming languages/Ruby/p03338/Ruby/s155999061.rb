n = gets.chomp.to_i
s = gets.chomp.split("")
a = []
b = s
ans = 0
# hash = Hash.new(0)
# arr = [*"a".."z"]
# arr.each do |i|
#     hash[i] += 0
# end
(n-1).times do 
    hash = Hash.new(0)
    arr = [*"a".."z"]
    arr.each do |i|
    hash[i] += 0
    end
    # hash_a = Hash.new(*"a".."z",1)
    # hash_b = Hash.new(*"a".."z",1)
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
    # max = [hash_b.size,hash_a.size].max
    # min = [hash_b.size,hash_a.size].min
    # if max == hash_b.size
    #     big = hash_b
    #     small = hash_a
    # elsif max == hash_a
    #     big = hash_a
    #     small = hash_b
    # end
    # if big == nil || small == nil
    #     break
    # end
    #  p big
    #  p small
    # small.each do |i|
    #     # p big[i[0]]
    #     if big.include?(i[0]) 
    #         count += 1
    #        # [i[1],big[i[0]]].min
    #     end
    # end
    ans = [ans,count].max
end
puts ans