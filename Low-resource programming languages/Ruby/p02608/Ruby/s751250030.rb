N = gets.to_i

$counts = [0] * (N + 1)

def add(x, y, z)
  n = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
  if n <= N
    # puts "n=#{n}, #{x}, #{y}, #{z}"
    $counts[n] += 1
    false
  else
    # puts "over, n=#{n}, #{x}, #{y}, #{z}"
    true
  end
end

max = 100
(1..max).each do |x|
  (1..max).each do |y|
    (1..max).each do |z|
      add(x, y, z)
    end
  end
end

puts $counts[1..-1]
