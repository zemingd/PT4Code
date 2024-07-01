S  = gets.chomp
cnt = 0
max_cnt = 0
S.each_char do |c|
    if c == 'R'
        cnt += 1
        max_cnt = [cnt, max_cnt].max
    else
        cnt = 0
    end
end
puts max_cnt