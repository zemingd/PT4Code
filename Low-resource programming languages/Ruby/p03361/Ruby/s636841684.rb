h,w = gets.chomp.split.map(&:to_i)
s = []
h.times do
    s << gets.chomp.split("")
end

for i in 0..(h-1)
    for j in 0..(w-1)
        c = 0
        next if s[i][j] == '.'
        c += 1 if i > 0 && s[i-1][j] == "#"
        c += 1 if j > 0 && s[i][j-1] == "#"
        c += 1 if i != h-1 && s[i+1][j] == "#"
        c += 1 if j != w-1 && s[i][j+1] == "#"
        if c == 0
            puts "No"
            exit
        end
    end
end

puts "Yes"