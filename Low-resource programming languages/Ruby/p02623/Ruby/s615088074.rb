n, m, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
b_size = b.size
alla = 0
allb = 0
a_goukei = [0]
b_goukei = [0]
a.each do |i|
    alla += i
    a_goukei << alla
end
b.each do |j|
    allb += j
    b_goukei << allb
end
i = 1
all = 0
ans = 0
#p a_goukei[1] + b_goukei[b_size]
j = m 
#p a_goukei[i] + b_goukei[j]
    while a_goukei[i] + b_goukei[j] > k && j != 0
        ans = a_goukei[i] + b_goukei[j]
        j -= 1
    end
    ii = 0
    kotae = 0
    bb = b_goukei[j]
    #p j
a_goukei.each do |o| 
    all = 0
    all = bb + o
   #p all
   #p k
    if all <= k
       # puts "UUU"
        size = j + ii
        kotae = [size,kotae].max
    end
    ii += 1
end
puts kotae