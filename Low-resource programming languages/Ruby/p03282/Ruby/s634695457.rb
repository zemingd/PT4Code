s=gets.chomp.split("").map(&:to_i)
k=gets.chomp.to_i
0.upto(k-1) do |i|
    if s[i] != 1
        puts i
        exit
    end
end
puts 1