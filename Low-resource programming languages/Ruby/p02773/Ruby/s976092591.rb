n = gets.chomp.to_i

s = Hash.new(0)
n.times do |i|
  si = gets.chomp
  s[si] += 1
end

keys = s.keys
values = s.values
max = values.max

list = []
s.each do |k, v|
  if v == max
    list.push(k)
  end
end

puts list.sort