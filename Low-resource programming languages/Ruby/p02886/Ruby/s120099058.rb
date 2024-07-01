n = gets.to_i
ds = gets.split.map(&:to_i)
ans = 0
ds.each_with_index do |d1, index1|
  ds.each_with_index do |d2, index2|
    if index1 != index2
      ans += d1 * d2
    end
  end
end
puts ans / 2