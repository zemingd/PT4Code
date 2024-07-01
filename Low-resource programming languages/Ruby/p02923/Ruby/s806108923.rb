N = gets.strip.to_i
H = gets.strip.split(' ').map(&:to_i)
longest = 0
streak = 0
(0..N-2).each do |i|
  if H[i] >= H[i+1]
    streak += 1
  else
    if longest < streak
      longest = streak
    end
    streak = 0
  end
end
longest = streak if longest < streak
puts longest