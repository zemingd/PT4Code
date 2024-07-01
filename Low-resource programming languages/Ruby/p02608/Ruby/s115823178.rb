num = gets.to_i

# 6*(x*x)>10000 になるxの最小値が41
loop_count = 41

ans = Array.new(num, 0)
for x in 1..loop_count do
  for y in 1..loop_count do
    for z in 1..loop_count do
      result = (x*x) + (y*y) + (z*z) + (x*y) + (y*z) + (z*x)
      if result <= num
        ans[result] += 1
      end
    end
  end
end

ans.each do |a|
  puts a
end
