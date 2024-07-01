n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort

if n == 2
  puts a[1]
  exit
end

stack = []
2.times do |j|
  i = 1
  while i <= a[j] / i
    if a[j] % i == 0
      stack << i if !stack.include?(i)
      stack << a[j] / i if !stack.include?(a[j] / i)
    end
    i += 1
  end
end

stack.sort.reverse.each do |i|
  cnt = 0
  n.times do |j|
    cnt += 1 if a[j] % i != 0
  end
  if cnt <= 1
    puts i
    exit
  end
end
