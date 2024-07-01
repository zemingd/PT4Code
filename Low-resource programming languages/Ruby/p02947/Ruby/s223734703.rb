n = gets.chomp.to_i
s = []
n.times do
  s.push(gets.chomp.split('').sort.join(''))
end

h = s.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

ans = 0
h.each_value do |v|
  next if v == 1
  ans += (v * (v - 1)) / 2
end
p ans
