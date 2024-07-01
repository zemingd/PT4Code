n,l=gets.split.map &:to_i
s=Array.new
n.times do
    s<<gets.chomp
end
s.sort!
for i  in s
    print i
end
puts