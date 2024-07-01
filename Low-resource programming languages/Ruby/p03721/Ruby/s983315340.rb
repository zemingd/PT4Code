n, k = gets.split.map(&:to_i)
arr = []
n.times do
  ab = gets.split.map(&:to_i)
  arr << ab
end

current = 0
arr.each do |ab|
  current += ab[1]
  if current >= k
    puts ab[0]
    exit
  end
end
