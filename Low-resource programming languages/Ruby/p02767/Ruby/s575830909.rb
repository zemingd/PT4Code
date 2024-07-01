N = gets.to_i
C = Array.new(101, 0)
gets.split.map(&:to_i).each do |x|
  C[x] += 1
end

ans = (1 .. 100).map do |y| 
  (1 .. 100).inject(0) do |s, x| 
    s + C[x] * (y - x) ** 2 
  end
end.min
puts ans
