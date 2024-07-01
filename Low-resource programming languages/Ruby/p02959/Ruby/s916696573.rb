n = gets.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)

fuckin_enemies = 0

(1..n).reverse_each do |i|
  v = b.pop
  if(a[i] <= v)
    fuckin_enemies = fuckin_enemies + a[i]
    if(a[i-1] <= v - a[i])
      fuckin_enemies = fuckin_enemies + a[i-1]
      a[i-1] = 0
    else
      fuckin_enemies = fuckin_enemies + (v - a[i])
      a[i-1] = a[i-1] - (v - a[i])
    end
  else
    fuckin_enemies = fuckin_enemies + v
  end
end
puts fuckin_enemies
