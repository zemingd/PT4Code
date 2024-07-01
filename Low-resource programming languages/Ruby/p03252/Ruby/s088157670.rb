require 'pp'
require 'set'

n = gets.chomp!
t = gets.chomp!

same = {}
same2 = {}
same3 = {}

n.length.times do |i|
    same[n[i]] ||= SortedSet.new
    same[n[i]] << i

    same2[i] = n[i]
    same3[i] = t[i]
end

same3.each do |i, ch|
    if ch != same2[i]
        ch2 = same2[i]
        tmp = same.delete(ch2) || SortedSet.new
        tmp2 = same.delete(ch) || SortedSet.new
        same[ch] = tmp
        same[ch2] = tmp2

        tmp.each do |k|
            same2[k] = ch
        end

        tmp2.each do |j|
            same2[j] = ch2
        end
    end
end

puts same2.values.join == t ? "Yes" : "No"
