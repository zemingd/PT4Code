n = gets.strip.to_i
h = gets.strip.split.map(&:to_i)

high = 0
count = []

(1..n-1).each do |i|
  if h[i-1] >= h[i]
    count[count.length] = 0
    (0..count.length-1).each do |j|
      count[j] += 1
      high = count[j] if high < count[j]
    end
  else
    count = []
  end
end

puts high