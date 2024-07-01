n = gets.to_i
as = gets.split(' ').map(&:to_i)
as.sort!
min_1 = as[1]

def solve(as, x)
    count = 0
    as.each do |a|
        count += 1 if a % x != 0
        return false if count == 2
    end
    return true
end

min_1.times do |i|
    ans = solve(as, min_1-i)
    if ans == true
        puts min_1 - i
        break
    end
end
