a, v = gets.split.map(&:to_i)
b, w = gets.split.map(&:to_i)
t = gets.to_i

if v <= w
  puts "NO"
else
  aa = v * t
  bb = w * t
  puts (aa - bb) >= (b - a).abs ? "YES" : "NO"
end