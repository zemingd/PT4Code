n = gets
a = gets.chomp.split.map(&:to_i)
cnt = a.count{|item| 0 > item}
if cnt % 2 == 0 then
    a.size.times do |hoge|
        if a[hoge] < 0 then
            a[hoge] *= -1
        end
    end
    puts a.sum
else
    a.size.times do |hoge|
        if a[hoge] < 0 then
            a[hoge] *= -1
        end
    end
    a.sort!
    a[0] *= -1
    puts a.sum
end