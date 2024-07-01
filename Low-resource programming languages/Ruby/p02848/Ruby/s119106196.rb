require 'pp'

n = gets.chomp!.to_i
r = gets.chomp!

po = 'A'.codepoints[0]
po2 = 'Z'.codepoints[0]
r.chars.each do |ch|
    c = ((ch.codepoints[0] - po + n) % po + po)
    if c > po2
        print (c - 26).chr
    else
        print c.chr
    end
end

puts ""
