n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = a.inject(:+)
hash = Hash.new(0)
aa = a.size
(0..aa-1).each do |i|
    hash[a[i]] += 1
end
q = gets.chomp.to_i
q.times do 
    all = []
    b,c = gets.chomp.split(" ").map(&:to_i)
    hash[c] += hash[b]
    kari = hash[b]
    hash[b] = 0
   ans = ans + kari * c -  kari * b
    puts ans
end