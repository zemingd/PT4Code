n = gets
a = gets.chomp.split.map(&:to_i)
cnt = a.count{|item| 0 > item}
i = 0
z = 0
if cnt % 2 == 0 then
    a.each do |hoge|
        i += hoge.abs
    end
    puts i
else
    a.each do |hoge|
        i += hoge.abs
        if i == hoge.abs then
            z = hoge.abs
        elsif i != hoge.abs and z > hoge.abs then
            z = hoge.abs
        end
    end
    puts i - (z * 2)
end