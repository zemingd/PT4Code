a = Array.new(3).map { Array.new(3, nil) }
c = Array.new(3).map { Array.new(3, false) }
(0..2).each do |i|
  a[i][0], a[i][1], a[i][2] = gets.chomp.split(" ").map(&:to_i)
end

n = gets.chomp.to_i
b = Array.new(n)

(0..n - 1).each do |i|
  b[i] = gets.chomp.to_i
end

a.each.with_index do |rowelem, row|
  rowelem.each.with_index do |colelem, col|
    if b.include?(colelem)
      c[row][col] = true
    end
  end
end

c_t = c.transpose
naname1 = [c[0][0], c[1][1], c[2][2]]
naname2 = [c[0][2], c[1][1], c[2][0]]

if c[0].all? || c[1].all? || c[2].all? ||
   c_t[0].all? || c_t[1].all? || c_t[2].all? ||
   naname1.all? || naname2.all?
  puts "Yes"
else
  puts "No"
end
