table = Array.new(51,0)
a = b = c = d = 10

a.times do |a|
  b.times do |b|
    c.times do |c|
      d.times do |d|
        table[a+b+c+d] += 1
      end
    end
  end
end

while n = gets do
  if n == nil then
    break
  end

  puts table[n.to_i]
end