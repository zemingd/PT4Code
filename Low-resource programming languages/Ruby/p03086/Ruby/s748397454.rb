s=gets.chomp

n=s.length
n.downto(1) do |i|
    (n-i+1).times do |j|
        if s[j,i].count("ACGT")==i
            puts i
            return
        end
    end
end
puts 0