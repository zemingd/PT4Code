line = gets.chomp.split(" ").map(&:to_i)
l = line[0]
r = line[1]
base = 2019

while l >= base do
    l -= base
    r -= base
end
i = l
# puts "#{l} #{r}"

if l <= base and base <= r
    i = base
end

# p i
puts (i % base) * ((i + 1) % base)
