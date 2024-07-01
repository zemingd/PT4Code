require 'pp'

h, w = gets.chomp!.split(" ").map(&:to_i)
s = [['.'] * (w + 2)]
h.times do |i|
    x = ['.'] + gets.chomp!.chars + ['.']
    s << x
end
s << ['.'] * (w + 2)

1.upto(h) do |i|
    1.upto(w) do |j|
        if s[i][j] == '#' && s[i-1][j] == '.' && s[i][j-1] == '.' && s[i+1][j] == "."  && s[i][j+1] == "."
            puts "No" 
            exit 0
        end
    end
end

puts "Yes"
