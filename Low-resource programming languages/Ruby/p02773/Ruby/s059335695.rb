 end 
n = gets.chomp.to_i
hash = Hash.new(0)
n.times do |i|
    s = gets
    s = s.chomp
    if hash.include?(s)
        hash[s] += 1
    else
        hash[s] = 1
    end
    #p hash
end
hash_kai =  hash.sort_by{|i,j| j }
arr = []
#while true
count = 0
#p hash_kai
value = hash_kai[-1]
value = value[-1]
while true
 
    key_value = hash_kai.pop
    if key_value
    if value == key_value[-1]
    arr << key_value[0]
    else
        break
    else
        break
    end
    count += 1
end
arr = arr.sort
arr.each  {|i| puts i}