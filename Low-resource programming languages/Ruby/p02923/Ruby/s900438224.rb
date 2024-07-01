n = gets.chomp("").to_i
h = gets.split(" ").map(&:to_i)

(n-1).times do |i|
  if h[i] >= h[i+1]
    if i != 0
      h[i] = 1 + h[i-1]
    else
      h[i] = 1
    end
  else
    h[i] = 0
  end
end

h.delete_at(n-1)
if n != 1
  puts h.max
else
  puts 0
end
