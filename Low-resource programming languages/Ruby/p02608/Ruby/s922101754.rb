num = gets.to_i
 
loop_count = 100

ans = Array.new(num,0)
1.upto(loop_count) do |x|
  1.upto(loop_count) do |y|
    1.upto(loop_count) do |z|
      result = x**2 + y**2 + z**2 + x*y + y*z + z*x

      ans[result-1] += 1 if result <= num
    end
  end
end
 
ans.each do |a|
  puts a
end