n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i)

s = 0

(1..n).each do |i|
  s += b[a[i-1]-1]
  if i > 1 && ( a[i-1] - a[i-2] ) == 1
    s += c[a[i-2]-1]
  end
end

puts s
