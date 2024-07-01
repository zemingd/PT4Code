n = gets.strip.to_i
data = gets.strip.split.map(&:to_i)
s = []

(0..data.length - 1).each do |j|
  (0..data.length - 1).each do |i|
    if data[i] == s.length+1
      s.push(i+1)
    end
  end
end

print s.join(' ')