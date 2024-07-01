N = gets.to_i
T, A = gets.split.map(&:to_i)
Hs = gets.split.map{|h| T - h.to_i * 0.006 }

ans = N
near = T

Hs.each_with_index do |h, i|
  if (A - h).abs < near
    near = (A - h).abs
    ans = i + 1
  end
end

puts ans