s = gets.chomp.chars
k = gets.to_i
n = s.size
z = "z".ord

s.map! do |c|
    if c == "a"
        c
    elsif (x = z - c.ord) < k
        k -= x + 1
        "a"
    else
        c
    end
end

k %= 26
s[-1] = (s[-1].ord + k).chr
puts s.join
