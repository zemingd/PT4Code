n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

h = h.sort.reverse.reverse

if k>=n
    p 0
else
    h = h[0..n-k-1]
    sum = 0
    h.map{|x| sum+=x}
    puts sum
end


