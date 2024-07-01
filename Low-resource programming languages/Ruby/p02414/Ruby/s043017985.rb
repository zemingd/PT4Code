n, m, l = gets.split.map(&:to_i)

array_A = Array.new
n.times do |a|
   line_A = gets.split.map(&:to_i)
   array_A << line_A
end

array_B = Array.new
m.times do |b|
   line_B = gets.split.map(&:to_i)
   array_B << line_B
end

matrixs = Array.new
n.times do |c|
   matrix = Array.new
   l.times do |d|
      line = 0
      m.times do |e|
         element = array_A[c][e] * array_B[e][d]
         line += element
      end
      matrix << line
   end
   matrixs << matrix
end

matrixs.each do |matrix|
   matrix.each_with_index do |val, idx|
      if idx == l - 1
         print "#{val}\n"
      else
         print "#{val} "
      end
   end
end