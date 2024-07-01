N = gets.to_i
1.upto(N) do |n|
    cnt = 0
    1.upto(100) do |x|
        break if x**2 > N
        1.upto(100) do |y|
            break if x**2 + y**2 + x*y > N
            1.upto(100) do |z|
                n0 = x**2 + y**2 + z**2 + x*y + y*z + z*x
                if n0 == n
                    cnt += 1
                elsif n0 > n
                    break
                end
            end
        end
    end
    puts cnt
end