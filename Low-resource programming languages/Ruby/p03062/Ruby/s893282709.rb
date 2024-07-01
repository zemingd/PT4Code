n = gets
a = gets.chomp.split.map(&:to_i)
cnt = a.count{|item| 0 > item}
i = 0
if cnt % 2 == 0 then
    a.each do |hoge|
        i += hoge.abs
    end
    puts i
else
    a.size.times do |hoge|
        if a[hoge] < 0 then
            a[hoge] = a[hoge].abs
        end
    end
    a.sort!
    a[0] = -(a[0])
    puts a.sum
end