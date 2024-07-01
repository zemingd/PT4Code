a = gets.to_i
h = gets.chomp.split(" ").map(&:to_i);
r = Array.new(a)
r[0] = 0
r[1] = (h[1]-h[0]).abs

i = 2
(a - 2).times do 
  jump1 = r[i-1] + (h[i-1] - h[i]).abs
  jump2 = r[i-2] + (h[i-2] - h[i]).abs

  if jump1 < jump2
    r[i] = jump1
  else
    r[i] = jump2
  end
  i += 1
end

puts r.last
