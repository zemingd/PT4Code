
n = gets.to_i
s = gets.chomp

s.chars do |c|
    print ((c.ord-65+n)%26 + 65).chr
end