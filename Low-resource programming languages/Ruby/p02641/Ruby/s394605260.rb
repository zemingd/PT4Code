X,N = gets.split.map &:to_i
if N==0 then
    puts X
    exit
end

p = gets.split.map &:to_i
unless p.include? X then
    puts X
    exit
end

d = 1
c = X
while true
    c = X - d
    break unless p.include? c
    p.delete c

    c = X + d
    break unless p.include? c
    p.delete c

    d+=1
end

puts c