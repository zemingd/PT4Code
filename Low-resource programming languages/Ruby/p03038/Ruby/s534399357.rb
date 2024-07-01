n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
d = Array.new(m){ gets.split.map(&:to_i) }.sort_by{|a|-a[1]}

solve = -> do
  i = 0
  d.each do |b,c|
    b.times do
      return if i >= n
      a[i] = c if a[i] < c
      i += 1
    end
  end
end

solve[]
puts a.inject(:+)