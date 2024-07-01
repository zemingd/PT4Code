N = gets.to_i
hash = Hash.new(0)
1.upto(100) do |x|
    1.upto(100) do |y|
        1.upto(100) do |z|
            hash[x**2 + y**2 + z**2 + x*y + y*z + z*x] += 1
        end
    end
end
1.upto(N) do |n|
    puts hash[n]
end