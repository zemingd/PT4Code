s = gets.chomp
n = s.size
ans = 0

n.times do |i|
    (i+1).upto(n) do |j|
        if s[i...j] =~ /^[ACGT]+$/ then
            ans = [j-i, ans].max
        end
    end
end

puts ans