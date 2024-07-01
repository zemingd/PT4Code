gets
nums = gets.split(" ").map(&:to_i).sort

ans = 0
nums.each_slice(2) do |(n, m)|
  ans += if m.nil?
           n
         elsif n >= 0
           n + m
         elsif m >= 0
           [n + m, -(n + m)].max
         else
           -(n + m)
         end
end

puts ans
