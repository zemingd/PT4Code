n, k = gets.split.map(&:to_i)
d = gets.chomp.split

loop do
    if (n.to_s.chars & d).empty?
        puts n
        exit
    end
    n += 1
end