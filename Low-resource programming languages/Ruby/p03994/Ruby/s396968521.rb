require 'pp'

base = 'z'.codepoints[0]
a = 'a'.codepoints[0]
o = gets.chomp!
orig = o.chars
s = o.codepoints
k = gets.to_i

memo = s.map {|x| (base - x + 1) % 26 }
#pp s
#pp memo

ans = Array.new(s.length)
memo.each_with_index do |x, i|
    if k >= x
        k -= x
        ans[i] = "a"
    else
        ans[i] = orig[i]
    end
end

ans[-1] = ((ans[-1].codepoints[0] - a + k) % 26 + a).chr
puts ans.join
