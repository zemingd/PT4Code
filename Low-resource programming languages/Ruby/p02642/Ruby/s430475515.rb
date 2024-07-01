n = gets.to_i
a = gets.split.map(&:to_i).sort!
tmp = Marshal.dump(a)
result = Marshal.load(tmp)

a.each_with_index do |x, i|
    count = 0
    x_moto = x
    while x <= a.max do
        result.delete(x) if result.count(x) > 1
        x += x_moto
        result.delete(x)
    end
end

puts result.count
