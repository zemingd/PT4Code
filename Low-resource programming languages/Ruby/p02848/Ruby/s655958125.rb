n,s = readlines.map &:chomp
n = n.to_i
mojiretus = s.bytes.to_a

henkan = []

mojiretus.each do |mojiretu|
    mojiretu = ((mojiretu + n) - 65) % 26 + 65
    henkan << mojiretu
end

puts  henkan.map {|code| code.chr}.join