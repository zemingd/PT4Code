N=gets.to_i

arr = Array.new(N+1,0)
1.upto(100) do |x|
    1.upto(100) do |y|
        1.upto(100) do |z|
            n = x*x + y*y + z*z + x*y + y*z + z*x
            arr[n] += 1 if n <= N
        end
    end
end

puts arr[1..-1]