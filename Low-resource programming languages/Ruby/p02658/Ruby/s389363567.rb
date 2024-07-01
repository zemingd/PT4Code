def main
    n = gets.to_i
    as = gets.chomp.split(" ").map(&:to_i)
    ans = 1

    as.each do |a|
        ans *= a
    end
    if ans > 10**18
        puts -1
        return
    else
        puts ans
    end
end

main
