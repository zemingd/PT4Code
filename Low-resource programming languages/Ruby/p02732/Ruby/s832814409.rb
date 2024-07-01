n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

count = Hash.new(0)
a.each do |elem|
  count[elem] += 1
end

sum = 0
count.each_value do |v|
  sum += (v*(v-1)) / 2
end

a.each do |e|
  v_e = count[e]
  if v_e == 1
    p sum
    next
  end
  p sum - (v_e*(v_e-1)/2 - (v_e-1)*(v_e-2)/2)
end
