n, k = gets.split.map(&:to_i)
a, b = Array.new(n) { gets.split.map(&:to_i) }.transpose
count = 0

a.zip(b).sort.each do |a, b|
  count += b
  if count >= k
    puts a
    exit
  end
end