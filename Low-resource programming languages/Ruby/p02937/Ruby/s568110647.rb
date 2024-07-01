s = gets.chomp!
t = gets.chomp!

n = 0
position = 0

t.chars.each do |c|
    unless position = s.index(c, position) then
        n += 1

        unless position = s.index(c) then
            puts -1
            exit
        end    
    end
    position += 1
end

puts s.length * n + position