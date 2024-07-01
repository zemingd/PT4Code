n, m = gets.strip.split.map(&:to_i)
l = []
r = []
m.times do |i|
  l[i], r[i] = gets.strip.split.map(&:to_i)
end 

low = l[0]
high = r[0]

(1..m-1).each do |i|
  if l[i] <= high || r[i] >= low
    low = [low, l[i]].max
    high = [high, r[i]].min
  else
    puts '0'
    exit
  end
end

puts (high-low + 1).to_s