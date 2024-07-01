N = gets.to_i
s = gets.chomp

res = ''
prev_str = ''
N.times do |i|
    if prev_str != s[i] then
        res += s[i]
        prev_str = s[i]
    end
end

puts res.length