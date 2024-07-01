
n = gets.to_i

str = []

n.times do
    s = gets.chomp
    if(str.size!=0)
        if(str[-1][-1]!=s[0]||str.include?(s))
            puts "No"
            exit
        end
    end
    str.push(s)
end

puts "Yes"