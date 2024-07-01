n = $stdin.gets.chomp.to_i
kei = 1
arr = Array.new(5766+1){0}
1.step(31) do |x|
  1.step(31) do |y|
    1.step(31) do |z|
  	  kei = x**2 + y**2 + z**2 + x*y + y*z + z*x
      arr[kei] += 1
    end
  end
end

n.times do |k|
 puts arr[k+1]
end