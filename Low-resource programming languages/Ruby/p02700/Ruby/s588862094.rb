def main
    a,b,c,d = gets.chomp.split(" ").map(&:to_i)
    loop do
        c -= b
        break if c <= 0
        a -= d
        break if a <= 0
    end
    puts a > 0 ? "Yes" : "No"
end

main
