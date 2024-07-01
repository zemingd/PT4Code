n = $stdin.gets.chomp.to_i
kei = 1
arr = Array.new(1000){0}
1.step(31) do |x|
  1.step(31) do |y|
    1.step(31) do |z|
  	  kei = x**2 + y**2 + z**2 + x*y + y*z + z*x
      if kei <= 1000
        arr[(kei-1)] += 1
      end
    end
  end
end

n.times do |k|
  puts arr[k]
end