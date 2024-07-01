A, B, C, D, E, F = gets.chomp.split.map(&:to_i)

ijs = (0..30).to_a.repeated_permutation(2)
xs = []
ijs.each do |(i, j)|
  x = (100 * A * i) + (100 * B * j)
  xs << x if x < F
end

ys = []
ijs.each do |(i, j)|
  y = (C * i) + (D * j)
  ys << y if y < F
end

ans = Float::INFINITY
xs.each do |x|
  ys.each do |y|
    if (x / 100) * E > y
      ans = [x + y, y]
    end
  end
end
puts ans.join(' ')