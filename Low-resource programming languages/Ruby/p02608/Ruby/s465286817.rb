n = gets.to_i
t = Math.sqrt(n)
array = Array.new(n,0)

(1..t).each do |x|
  (1..t).each do |y|
    (1..t).each do |z|
      k = x**2 + y**2 + z**2 + x*y + y*z + z*x
      if k <= n
        p [x,y,z]
        array[k-1] += 1
      end
    end
  end
end

array.each do |a|
  puts a
end
