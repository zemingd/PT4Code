n = gets.to_i
x = gets.split.map(&:to_i)
h = Hash.new(0)
x.each do |y|
  h[x] += 1
end
x.each do |y|
  a1 = x.sort[n / 2 - 1]
  a2 = x.sort[n / 2]
  if y <= a1
    puts a2
  else
    puts a1
  end
end