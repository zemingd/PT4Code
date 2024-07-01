n = gets.to_i
ans = Array.new(10**5, 0)

## x <= y <= zとする。

max_x = Math.sqrt(n/6).to_i + 1
max_y = Math.sqrt(n/3).to_i + 1
max_z = Math.sqrt(n).to_i + 1


(1..max_x).each do |x|
  (x..max_y).each do |y|
    (y..max_z).each do |z|
      result = x**2 + y**2 + z**2 + x*y + y*z + z*x
      if x == y && x == z
	      plus_cnt = 1
      elsif x == y || y == z || z == x
          plus_cnt = 3
      else
          plus_cnt = 6
      end
	      ans[result] += plus_cnt
    end
  end
end

(1..n).each do |i|
  puts ans[i]
end
