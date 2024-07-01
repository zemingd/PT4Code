n = gets.chomp.to_i

data = {}
count = 0
n.times do |i|
    s = gets.chomp.split('').sort.join('')
    if data.keys.include?(s)
        data[s] += 1 + data[s]
    else
        data[s] = 0
    end
end
puts data.values.inject(0, :+)
