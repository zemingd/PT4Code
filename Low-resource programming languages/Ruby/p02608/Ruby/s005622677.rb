n = gets.to_i
ans = Array.new(10**4 + 1, 0)

## x <= y <= zとする。

max_x = Math.sqrt(n/6).to_i
max_y = Math.sqrt(n/3).to_i
max_z = Math.sqrt(n).to_i


(1..max_x).each do |x|
  (x..max_y).each do |y|
    (y..max_z).each do |z|
      result = x**2 + y**2 + z**2 + x*y + y*z + z*x
	  break if result > n
      if x != y && y != z
	      plus_cnt = 6
      elsif x != z && (x == y || y == z) 
          plus_cnt = 3
      else x == z
          plus_cnt = 1
      end
	      ans[result] += plus_cnt if result <= n
    end
  end
end

(1..n).each do |i|
  puts ans[i]
end