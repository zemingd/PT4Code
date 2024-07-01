S = gets.chomp
res = 999
target = 753
(S.length-2).times do |i|
    s = S[i..i+2]
    diff = (s.to_i - target).abs
    res = diff if diff < res
end
puts res