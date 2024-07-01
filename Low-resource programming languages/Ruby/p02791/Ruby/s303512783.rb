N = gets.strip.to_i
P = gets.strip.split(' ').map(&:to_i)
count = N
(1..N).each do |i|
  (0..(i-1)).each do |j|
    pp "#{i}, #{j}"
    if P[i-1] > P[j]
      pp "No"
      count -= 1
      break
    end
  end
end
puts count