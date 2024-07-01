S=gets.chomp
max = 0
cnt = 0
S.each_char do |c|
    if "AGCT".include?(c)
        cnt += 1
    else
        max = cnt if max < cnt
        cnt = 0
    end
end
max = cnt if max < cnt

puts max
