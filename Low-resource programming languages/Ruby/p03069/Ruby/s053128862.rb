n = gets.to_i
s = gets.chomp

tmp1 = Hash.new(0)
tmp2 = Hash.new(0)

n.times do |i|
  if s[i] == "."
    tmp1[i] = 1
  else
    tmp2[i] = 1
  end
end

n.downto(0) do |i|
  tmp1[i] += tmp1[i + 1]
  tmp2[i] += tmp2[i + 1]
end

count = 0
min = Float::INFINITY

n.times do |i|
  next if s[i] == "."
  min = [min, count + tmp1[i]].min
  count += 1
end

puts [min, count].min
