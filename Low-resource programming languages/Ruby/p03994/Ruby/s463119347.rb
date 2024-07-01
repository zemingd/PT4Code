s = gets.chomp
k = gets.to_i
n = s.size
z = "z".ord

n.times do |i|
    if s[i] == "a"
    elsif z - s[i].ord < k
        k -= z - s[i].ord + 1
        s[i] = "a"
    end
end

k %= 26
s[-1] = (s[-1].ord + k).chr
puts s
