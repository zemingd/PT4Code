s = gets.chomp
k = gets.to_i
n = s.size
z = "z".ord

n.times do |i|
    if s[i] == "a"
        next
    elsif (x = z - s[i].ord) < k
        k -= x + 1
        s[i] = "a"
    end
end

k %= 26
s[-1] = (s[-1].ord + k).chr
puts s