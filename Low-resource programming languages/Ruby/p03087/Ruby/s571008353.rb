count = STDIN.gets.split(' ')[1].to_i
s = STDIN.gets.chomp
t = [];t[0] = 0
c_tmp = 0
(s.length).times do |c|
    if s[c] == 'A'
        if s.length > c + 1  and s[c+1] == 'C'
            c_tmp +=1;
            t[c+1] = c_tmp
        end
    else
      t[c+1] = t[c]
    end
end
count.times do |c|
    start = STDIN.gets.split(' ').map(&:to_i)
    puts t[start[1] - 1] - t[start[0] - 1]
end