n = $stdin.gets.chomp.to_i
kei = 1
arr = Array.new(1001){0}
1.step(32) do |x|
  1.step(32) do |y|
    1.step(32) do |z|
  	  kei = x**2 + y**2 + z**2 + x*y + y*z + z*x
      if kei <= 1000
        arr[kei] += 1
      end
    end
  end
end
arr.delete_at(0)
n.times do |k|
  puts arr[k]
end
