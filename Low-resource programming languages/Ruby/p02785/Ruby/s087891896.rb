n,k = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

h = h.sort.reverse

if k>=n
    p 0
    exit
else
    h = h[0..k-1]
    sum = 0
    h.map{|x| sum+=x}
    puts sum
end


