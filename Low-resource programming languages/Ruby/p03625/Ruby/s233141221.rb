str = gets.chomp!
str = gets.chomp!

str = str.split(' ').map(&:to_i)

a = []
max = 0
str.each do |i|
   if str.count(i) > 1 then
        a.push(i)
    end
    if str.count(i) > 3 then
        if max < i*i then
            max = i*i
        end
    end
end

a.uniq!
a.sort!
if a.length > 1 || max != 0 then
    if max > a[-1]*a[-2] then
        puts max
    else
        puts a[-1]*a[-2]
    end
else
    puts 0
end
