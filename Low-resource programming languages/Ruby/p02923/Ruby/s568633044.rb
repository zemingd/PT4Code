n = gets.to_i
h = gets.chomp.split(' ').map(&:to_i)

max = 0
count = 0

(n-1).times do |i|
  if h[i] >= h[i+1]
    count += 1
  else
    if max <= count
      max = count
    end
    count = 0
  end
end

if max <= count
  max = count
end

print max