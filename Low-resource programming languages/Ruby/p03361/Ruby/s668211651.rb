h, w = gets.chomp.split(' ').map{|i| i.to_i}
s = Array.new(h + 2)
s[0] = Array.new(w + 2)
s[h + 1] = Array.new(w + 2)
s[0].fill(".")
s[h + 1].fill(".")
1.upto(h) do |i|
        s[i] = ("." + gets.chomp + ".").split('')
end
1.upto(h) do |i|
        1.upto(w) do |j|
                if s[i][j] == "#"
                        if s[i - 1][j] == "." && s[i + 1][j] == "." &&
                        s[i][j - 1] == "." && s[i][j + 1] == "." then
                                puts "No"
                                exit
                        end
                end
        end
end
puts "Yes"
