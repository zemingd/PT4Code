def f(xyz)
    xyz[0]*xyz[0] + xyz[1]*xyz[1] + xyz[2]*xyz[2] + xyz[0]*xyz[1] + xyz[1]*xyz[2] + xyz[2]*xyz[0]
end

n = gets.chomp.to_i
MAX = 1000000
ans = Array.new(MAX, 0)

[*1..50].repeated_permutation(3) do |xyz|
    ans[f(xyz)] += 1
end

(1..n).each do |i|
    puts ans[i]
end