N = gets.to_i
S = gets.chomp

ans = ''
bf = nil

S.each_char do |s|
    ans += s if s != bf
    bf = s
end

puts ans.length