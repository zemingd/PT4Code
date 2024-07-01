def main
    n = gets.to_i
    as = gets.chomp.split(" ").map(&:to_i)
    ans = [0] * (n+1)
    as.each do |i|
        ans[i] += 1
    end
    ans.delete_at(0)
    puts ans
end

main
