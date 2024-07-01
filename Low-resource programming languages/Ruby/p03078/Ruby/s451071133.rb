x,y,z,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

o = []
0.upto(x-1) do |i|
  0.upto(y-1) do |j|
    0.upto(z-1) do |k|
      o.push a[i] + b[j] + c[k]
    end
  end
end
puts o.sort.reverse[0..k-1]
