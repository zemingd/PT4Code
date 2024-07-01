s = gets.chomp.split("")
t = gets.chomp.split("")
hash_s = Hash.new(0)
hash_t = Hash.new(0)
s.each do |i|
    hash_s[i] += 1
end
t.each do |j|
    hash_t[j] += 1
end
hash_s =  hash_s.sort
hash_t =  hash_t.sort
s_size = hash_s.size
t_size = hash_t.size
if s_size == 1 && t_size == 1
    puts hash_s[0][1] < hash_t[0][1] ? "Yes" : "No"
else
    if hash_s[0][0] >= hash_t[-1][0]
        puts "No"
    else
        puts "Yes"
    end
end