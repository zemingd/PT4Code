n = gets.chop.to_i
a = gets.chop.split.map(&:to_i)
first = a[0]
left = a.slice(1..-1)
count = 1
left.each do |ele|
  if ele >= first
    count += 1
  end
end
p count