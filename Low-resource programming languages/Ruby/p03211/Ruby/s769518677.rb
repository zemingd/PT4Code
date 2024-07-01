s = gets.chomp
diffs = []
(s.length - 2).times do |i|
    num = s[i].to_i * 100 + s[i+1].to_i * 10 + s[i+2].to_i
    diff = (num - 753).abs
    diffs << diff
end
puts diffs.min