n,k = gets.split(' ').map(&:to_i)
hs = gets.split(' ').map(&:to_i)

hs = hs.sort.reverse

if k>n
    puts 0
else
    puts hs[k..-1].inject(&:+)
end
