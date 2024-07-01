n = gets.chomp.to_i
ds = gets.chomp.split(' ').map(&:to_i)

if ds.length % 2 == 1
    puts(0)
    exit
end
ds.sort!

puts (ds[ds.length/2] - ds[ds.length/2 - 1])