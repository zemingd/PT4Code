def ascan; gets.split.map(&:to_i); end

dic = {}
last = nil
gets.to_i.times do
    str = gets.chomp
    if dic[str]
        puts "No"; exit
    end
    if last && last[-1] != str[0]
        puts "No"; exit
    end
    last = str
    dic[str] = true
end

puts "Yes"