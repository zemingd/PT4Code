N = gets.to_i 
x = (N ** 0.5).floor

f = 1
(1..x).each do |a| 
  if N % a == 0 
    f = (N / a).to_s.size 
  end
end

puts f