require "prime"
A = Prime.each(30).to_a.select{|v|v>2}

n = gets.to_i
ans = 0
A.permutation(2) do |i,j|
    if i ** 3 * j <= n
        ans += 1 
    end
end
A.combination(3) do |i,j,k|
    if i * j * k <= n
        ans += 1 
    end
end
puts ans