n, k = gets.split.map(&:to_i)
a = Array.new(n) { gets.split.map(&:to_i) }.sort_by {|x, y| x}
num = a[0][0]
sum = 0
a.each do |x, y|
  sum += y
  if sum >= k
    puts x
    exit
  end
end