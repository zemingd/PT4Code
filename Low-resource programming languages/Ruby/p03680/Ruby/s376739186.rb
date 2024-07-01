n = gets.to_i
a = []
b = Hash.new(0)
n.times do
  a << gets.to_i
end

c = a[0]
loop do
  if c == 2
    p b.values.inject(:+) + 1
    break
  elsif b[c] == 0
    b[c] += 1
    c = a[c-1]
  else
    puts '-1'
    break
  end
end
