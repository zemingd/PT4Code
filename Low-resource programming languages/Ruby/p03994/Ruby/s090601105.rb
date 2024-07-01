s = gets.chomp
k = gets.to_i
(s.length-1).times do |i|
    diff = 123 - s[i].ord
    if k >= diff
        s[i] = 'a'
        k -= diff
    end
end
(k % 26).times do
    s[-1] = s[-1].succ[0]
end
puts s