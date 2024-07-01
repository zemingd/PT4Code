s = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

max = 0

current_max = 0

i = 0


while(i < (h.size - 1))
  if h[i] >= h[i+1]
    current_max += 1
  else
    max = [max, current_max].max
    current_max = 0
  end
  i+=1
end
if current_max > 0
  max = [max, current_max].max
end

puts max
