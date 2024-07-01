n = gets.to_i
s = []
n.times do |i|
  s << gets.chomp.split('').sort_by{|x| x}
end

sum = 0
while s.length > 1 do
  count = 1
  list = []
  list << 0
  str = s[0]
  (1..s.length-1).each do |i|
    if s[i] == str
      list << i
      count += 1
    end
  end
  sum += (count*(count-1))/2
  list.each do |k|
    s.delete_at(k)
  end
end

print sum