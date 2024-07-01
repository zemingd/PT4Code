s = gets.chomp
k = gets.to_i
a = "a".ord
z = "z".ord

s = s.each_byte.map do |c|
    if c == a
        c.chr
    elsif z - c < k
        k -= z - c + 1
        a.chr
    else
        c.chr
    end
end

k %= 26
s[-1] = (s[-1].ord + k).chr
puts s.join