N = gets.to_i

ans = Array.new(N, 0)
1.step(100) do |x|
  x.step(100) do |y|
    y.step(100) do |z|
      n = x**2 + y**2 + z**2 + x*y + y*z + z*x
      break if N < n
      ans[n - 1] += 
        case
        when x == y && x == z then 1
        when x != y && y != z then 6
        else ;                   ; 3
        end
    end
  end
end

puts ans