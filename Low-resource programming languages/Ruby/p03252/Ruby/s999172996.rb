def normalize(str)
    num = 0
    to_num = {}
    str.chars.map{|c|
        if ! to_num.has_key?(c)
            to_num[c] = num
            num += 1
        end
        to_num[c]
    }
end

puts normalize(gets.chomp) == normalize(gets.chomp) ? 'Yes' : 'No'
