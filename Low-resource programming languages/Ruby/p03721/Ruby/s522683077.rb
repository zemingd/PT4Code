n,k = gets.chomp.split.map(&:to_i)
count = 0
n.times do |i|
  a,b = gets.split.map(&:to_i)
  count += b
  if count >= k
    puts a
    exit
  end
end