def f(xyz)
    xyz[0]*xyz[0] + xyz[1]*xyz[1] + xyz[2]*xyz[2] + xyz[0]*xyz[1] + xyz[1]*xyz[2] + xyz[2]*xyz[0]
end

def countCombination(xyz)
    c = xyz.uniq.size
    if c == 1 then
        return 1
    elsif c == 2 then
        return 3
    else
        return 6
    end
end

n = gets.chomp.to_i
MAX = 10010
ans = Array.new(MAX, 0)

[1, 2, 3, 4, 5, 6, 7, 8, 9].repeated_combination(3) do |xyz|
    ans[f(xyz)] += countCombination(xyz)
end

(1..n).each do |i|
    puts ans[i]
end