L,R = gets.chomp.split(" ").map(&:to_i)
L_diff = L % 2019
R_diff = R % 2019


if (R<2019)
    mods = []
    L.upto(R-1) do |i|
        (i+1).upto(R) do |j|
            mods << (i*j)%2019
        end
    end
    puts mods.min
elsif (L>2019)
    mods = []
    L_diff.upto(R_diff-1) do |i|
        (i+1).upto(R_diff) do |j|
            mods << (i*j)%2019
        end
    end
    puts mods.min
elsif (R>2019)&&(L<2019)
    puts 0
elsif (R==2019)||(L==2019)
    puts 0
end
