def cake123(k, a, b, c)
  ab = []
  a.each do |x|
    b.each do |y|
      ab << x + y
    end
  end
  ab.sort_by! { |x| -1 * x }
  ab = ab[0...k]

  abc = []
  ab.each do |x|
    c.each do |y|
      abc << x + y
    end
  end

  abc.sort_by! { |x| -1 * x }
  k.times do |i|
    puts abc[i]
  end
end

x, y, z, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
cake123(k, a, b, c)