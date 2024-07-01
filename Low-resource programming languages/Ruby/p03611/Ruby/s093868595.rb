n = gets
a = gets.split.map(&:to_i)
d = Hash.new(0)
a.each_with_index do |b,i|
  a.each do |c|
    d[i] += 1 if (b-c).abs < 2
  end
end
p d.max[1]
