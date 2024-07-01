n = gets.to_i
h = gets.split.map(&:to_i)
count = 1

(n-1).times do |i|
  if (h[i] > h[i+1])
    count+=1
  end
end

puts count