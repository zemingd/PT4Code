s = gets.chomp
k = gets.to_i
(s.length-1).times do |i|
    diff = (123 - s[i].ord) % 26
    if k >= diff
        s[i] = 'a'
        k -= diff
    end
end
s[-1] = ((s[-1].ord - 97 + k) % 26 + 97).chr
puts s