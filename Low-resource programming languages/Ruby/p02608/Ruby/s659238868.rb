n = gets.to_i
f = Array.new(n+1, 0)

1.upto(100) do |x|
    sx = x * x
    break if sx > n
    1.upto(100) do |y|
        sy = sx + y * y + x * y
        break if sy > n
        1.upto(100) do |z|
            sz = sy + z * z + y * z + z * x
            break if sz > n
            f[sz] += 1
        end
    end
end

puts f[1..-1]