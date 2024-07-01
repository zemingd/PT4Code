n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
hash = Hash.new(0)
a.each do |i|
    hash[i] += 1
end
hash_2 = Hash.new(0)
arr = Array.new(n+1,0)
count = 0
hash.each do |i|
    #p i
    ans =  (i[1] * (i[1] - 1)) / 2
    hash_2[i[0]] = ans
    #p ans
    count += ans
end
p hash_2
a.each do |j|
    point = hash_2[j]
   # p point
  # puts "UU"
  # p j
    sa_1 = (hash[j] * (hash[j] - 1)) / 2
    #p sa_1
    sa_2 = [((hash[j]-1) * (hash[j] - 2)) / 2,0].max
    #p sa_2
    count = count - sa_1 + sa_2
    puts count
    count = count + (sa_1 - sa_2)
    #puts count
    #puts "KKK"
end