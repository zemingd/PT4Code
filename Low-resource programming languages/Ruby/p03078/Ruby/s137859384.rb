x, y, z, k = gets.split().map(&:to_i)
a = gets.split().map(&:to_i)
b = gets.split().map(&:to_i)
c = gets.split().map(&:to_i)

ans = []

a.sort.reverse[0..100].each do |i|
  b.sort.reverse[0..100].each do |j|
    c.sort.reverse[0..100].each do |k|
      ans << i+j+k
    end
  end
end

ans.sort.reverse[0..k-1].each do |i|
  puts i
end