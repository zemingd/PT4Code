n = gets.to_i
a = gets.split.map(&:to_i)
count = 0
a.select{|x|x.even?}.each do |i|
  j = 1
  while i >= 2**j && (i / 2**j).even?
    count += 1
    j += 1
  end
  count += 1
end
puts count