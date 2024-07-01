num = gets.to_i

loop_count = 99 # (x,y,z) = (99,1,1)

ans = Array.new(num, 0)
for x in 1..loop_count do
  for y in 1..loop_count do
    for z in 1..loop_count do
      result = (x*x) + (y*y) + (z*z) + (x*y) + (y*z) + (z*x)
      if result <= num
        ans[result-1] += 1
      end
    end
  end
end

ans.each do |a|
  puts a
end