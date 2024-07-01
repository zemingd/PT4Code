x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i).sort_by! { |x| -x }
ab = a.product(b).map { |x, y| x + y }.sort_by! { |x| -x }[0, k]
abc = []
# p ab
# p c
ab[0..k].each do |abi|
  c.each do |ci|
    abc << abi + ci
  end
end
puts abc.sort_by! { |x| -x }[0...k]
