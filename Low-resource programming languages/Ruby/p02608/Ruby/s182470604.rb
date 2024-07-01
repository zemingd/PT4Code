N = gets.to_i

hash = Hash.new 0
1.upto(99) do |x|
    r = x**2
    break if r > N
    1.upto(99) do |y|
        r2 = r + y**2 + x*y
        break if r2 > N
        1.upto(99) do |z|
            r3 = r2 + z**2 + x*z + y*z
            if r3 > N
                break
            else
                hash[r3] += 1
            end
        end
    end
end

1.upto(N) do |i|
    puts hash[i]
end