N, M = gets.chomp.split().map(&:to_i)
a = gets.chomp.split().map(&:to_i).sort
bc = M.times.map { gets.chomp.split().map(&:to_i) }.sort_by { |b, c| -c }
ct = 0

bc.each do |b, c|
  while ct < N && b > 0 && c > a[ct]  do
    a[ct] = c
    b -= 1
    ct += 1
  end
end

puts a.inject(:+)