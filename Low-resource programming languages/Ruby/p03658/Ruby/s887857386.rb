N,K  = gets.chomp.split(" ").map(&:to_i)
I = gets.chomp.split(" ").map(&:to_i)

k = K - 1
i = I.sort.reverse
l = i.slice(0..k)

r = l.inject(:+)
print(r)