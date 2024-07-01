n = gets.to_i
s = gets.chomp

ans = ""
s.chars do |c|
    ans = ans +  (65 + (c.ord - 65 + n ) % 26).chr
end

puts ans